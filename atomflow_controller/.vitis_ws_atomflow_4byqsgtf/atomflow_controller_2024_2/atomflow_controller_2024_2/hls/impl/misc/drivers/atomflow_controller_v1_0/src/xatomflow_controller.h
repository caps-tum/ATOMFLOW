// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XATOMFLOW_CONTROLLER_H
#define XATOMFLOW_CONTROLLER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xatomflow_controller_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XAtomflow_controller_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAtomflow_controller;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAtomflow_controller_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAtomflow_controller_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAtomflow_controller_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAtomflow_controller_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XAtomflow_controller_Initialize(XAtomflow_controller *InstancePtr, UINTPTR BaseAddress);
XAtomflow_controller_Config* XAtomflow_controller_LookupConfig(UINTPTR BaseAddress);
#else
int XAtomflow_controller_Initialize(XAtomflow_controller *InstancePtr, u16 DeviceId);
XAtomflow_controller_Config* XAtomflow_controller_LookupConfig(u16 DeviceId);
#endif
int XAtomflow_controller_CfgInitialize(XAtomflow_controller *InstancePtr, XAtomflow_controller_Config *ConfigPtr);
#else
int XAtomflow_controller_Initialize(XAtomflow_controller *InstancePtr, const char* InstanceName);
int XAtomflow_controller_Release(XAtomflow_controller *InstancePtr);
#endif

void XAtomflow_controller_Start(XAtomflow_controller *InstancePtr);
u32 XAtomflow_controller_IsDone(XAtomflow_controller *InstancePtr);
u32 XAtomflow_controller_IsIdle(XAtomflow_controller *InstancePtr);
u32 XAtomflow_controller_IsReady(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_EnableAutoRestart(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_DisableAutoRestart(XAtomflow_controller *InstancePtr);

void XAtomflow_controller_Set_mode(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_mode(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_emission_threshold(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_emission_threshold(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_atomLocationsSize(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_atomLocationsSize(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_projShape0(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_projShape0(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_projShape1(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_projShape1(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_atomLocations(XAtomflow_controller *InstancePtr, u64 Data);
u64 XAtomflow_controller_Get_atomLocations(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_psfSupersample(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_psfSupersample(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_imageProjectionSize(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_imageProjectionSize(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_imageProjs_local(XAtomflow_controller *InstancePtr, u64 Data);
u64 XAtomflow_controller_Get_imageProjs_local(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_imageProjs(XAtomflow_controller *InstancePtr, u64 Data);
u64 XAtomflow_controller_Get_imageProjs(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_imageProjs_local_size(XAtomflow_controller *InstancePtr, u64 Data);
u64 XAtomflow_controller_Get_imageProjs_local_size(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_fullImage(XAtomflow_controller *InstancePtr, u64 Data);
u64 XAtomflow_controller_Get_fullImage(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_fullImage_rows(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_fullImage_rows(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_fullImage_cols(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_fullImage_cols(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_emissions(XAtomflow_controller *InstancePtr, u64 Data);
u64 XAtomflow_controller_Get_emissions(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_grid_rows(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_grid_rows(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_grid_cols(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_grid_cols(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_targetGeometry_mem(XAtomflow_controller *InstancePtr, u64 Data);
u64 XAtomflow_controller_Get_targetGeometry_mem(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_compZoneRowStart(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_compZoneRowStart(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_compZoneRowEnd(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_compZoneRowEnd(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_compZoneColStart(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_compZoneColStart(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_Set_compZoneColEnd(XAtomflow_controller *InstancePtr, u32 Data);
u32 XAtomflow_controller_Get_compZoneColEnd(XAtomflow_controller *InstancePtr);
u32 XAtomflow_controller_Get_moveCount(XAtomflow_controller *InstancePtr);
u32 XAtomflow_controller_Get_moveCount_vld(XAtomflow_controller *InstancePtr);

void XAtomflow_controller_InterruptGlobalEnable(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_InterruptGlobalDisable(XAtomflow_controller *InstancePtr);
void XAtomflow_controller_InterruptEnable(XAtomflow_controller *InstancePtr, u32 Mask);
void XAtomflow_controller_InterruptDisable(XAtomflow_controller *InstancePtr, u32 Mask);
void XAtomflow_controller_InterruptClear(XAtomflow_controller *InstancePtr, u32 Mask);
u32 XAtomflow_controller_InterruptGetEnabled(XAtomflow_controller *InstancePtr);
u32 XAtomflow_controller_InterruptGetStatus(XAtomflow_controller *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
