// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xatomflow_controller.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAtomflow_controller_CfgInitialize(XAtomflow_controller *InstancePtr, XAtomflow_controller_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAtomflow_controller_Start(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAtomflow_controller_IsDone(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAtomflow_controller_IsIdle(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAtomflow_controller_IsReady(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAtomflow_controller_EnableAutoRestart(XAtomflow_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAtomflow_controller_DisableAutoRestart(XAtomflow_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_AP_CTRL, 0);
}

void XAtomflow_controller_Set_mode(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XAtomflow_controller_Get_mode(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XAtomflow_controller_Set_emission_threshold(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_EMISSION_THRESHOLD_DATA, Data);
}

u32 XAtomflow_controller_Get_emission_threshold(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_EMISSION_THRESHOLD_DATA);
    return Data;
}

void XAtomflow_controller_Set_atomLocationsSize(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_ATOMLOCATIONSSIZE_DATA, Data);
}

u32 XAtomflow_controller_Get_atomLocationsSize(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_ATOMLOCATIONSSIZE_DATA);
    return Data;
}

void XAtomflow_controller_Set_projShape0(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_PROJSHAPE0_DATA, Data);
}

u32 XAtomflow_controller_Get_projShape0(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_PROJSHAPE0_DATA);
    return Data;
}

void XAtomflow_controller_Set_projShape1(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_PROJSHAPE1_DATA, Data);
}

u32 XAtomflow_controller_Get_projShape1(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_PROJSHAPE1_DATA);
    return Data;
}

void XAtomflow_controller_Set_atomLocations(XAtomflow_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_ATOMLOCATIONS_DATA, (u32)(Data));
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_ATOMLOCATIONS_DATA + 4, (u32)(Data >> 32));
}

u64 XAtomflow_controller_Get_atomLocations(XAtomflow_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_ATOMLOCATIONS_DATA);
    Data += (u64)XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_ATOMLOCATIONS_DATA + 4) << 32;
    return Data;
}

void XAtomflow_controller_Set_psfSupersample(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_PSFSUPERSAMPLE_DATA, Data);
}

u32 XAtomflow_controller_Get_psfSupersample(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_PSFSUPERSAMPLE_DATA);
    return Data;
}

void XAtomflow_controller_Set_imageProjectionSize(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJECTIONSIZE_DATA, Data);
}

u32 XAtomflow_controller_Get_imageProjectionSize(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJECTIONSIZE_DATA);
    return Data;
}

void XAtomflow_controller_Set_imageProjs_local(XAtomflow_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_DATA, (u32)(Data));
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_DATA + 4, (u32)(Data >> 32));
}

u64 XAtomflow_controller_Get_imageProjs_local(XAtomflow_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_DATA);
    Data += (u64)XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_DATA + 4) << 32;
    return Data;
}

void XAtomflow_controller_Set_imageProjs(XAtomflow_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_DATA, (u32)(Data));
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_DATA + 4, (u32)(Data >> 32));
}

u64 XAtomflow_controller_Get_imageProjs(XAtomflow_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_DATA);
    Data += (u64)XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_DATA + 4) << 32;
    return Data;
}

void XAtomflow_controller_Set_imageProjs_local_size(XAtomflow_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_DATA, (u32)(Data));
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_DATA + 4, (u32)(Data >> 32));
}

u64 XAtomflow_controller_Get_imageProjs_local_size(XAtomflow_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_DATA);
    Data += (u64)XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_DATA + 4) << 32;
    return Data;
}

void XAtomflow_controller_Set_fullImage(XAtomflow_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_DATA, (u32)(Data));
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_DATA + 4, (u32)(Data >> 32));
}

u64 XAtomflow_controller_Get_fullImage(XAtomflow_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_DATA);
    Data += (u64)XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_DATA + 4) << 32;
    return Data;
}

void XAtomflow_controller_Set_fullImage_rows(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_ROWS_DATA, Data);
}

u32 XAtomflow_controller_Get_fullImage_rows(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_ROWS_DATA);
    return Data;
}

void XAtomflow_controller_Set_fullImage_cols(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_COLS_DATA, Data);
}

u32 XAtomflow_controller_Get_fullImage_cols(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_FULLIMAGE_COLS_DATA);
    return Data;
}

void XAtomflow_controller_Set_emissions(XAtomflow_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_EMISSIONS_DATA, (u32)(Data));
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_EMISSIONS_DATA + 4, (u32)(Data >> 32));
}

u64 XAtomflow_controller_Get_emissions(XAtomflow_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_EMISSIONS_DATA);
    Data += (u64)XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_EMISSIONS_DATA + 4) << 32;
    return Data;
}

void XAtomflow_controller_Set_grid_rows(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_GRID_ROWS_DATA, Data);
}

u32 XAtomflow_controller_Get_grid_rows(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_GRID_ROWS_DATA);
    return Data;
}

void XAtomflow_controller_Set_grid_cols(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_GRID_COLS_DATA, Data);
}

u32 XAtomflow_controller_Get_grid_cols(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_GRID_COLS_DATA);
    return Data;
}

void XAtomflow_controller_Set_targetGeometry_mem(XAtomflow_controller *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_TARGETGEOMETRY_MEM_DATA, (u32)(Data));
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_TARGETGEOMETRY_MEM_DATA + 4, (u32)(Data >> 32));
}

u64 XAtomflow_controller_Get_targetGeometry_mem(XAtomflow_controller *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_TARGETGEOMETRY_MEM_DATA);
    Data += (u64)XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_TARGETGEOMETRY_MEM_DATA + 4) << 32;
    return Data;
}

void XAtomflow_controller_Set_compZoneRowStart(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONEROWSTART_DATA, Data);
}

u32 XAtomflow_controller_Get_compZoneRowStart(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONEROWSTART_DATA);
    return Data;
}

void XAtomflow_controller_Set_compZoneRowEnd(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONEROWEND_DATA, Data);
}

u32 XAtomflow_controller_Get_compZoneRowEnd(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONEROWEND_DATA);
    return Data;
}

void XAtomflow_controller_Set_compZoneColStart(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONECOLSTART_DATA, Data);
}

u32 XAtomflow_controller_Get_compZoneColStart(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONECOLSTART_DATA);
    return Data;
}

void XAtomflow_controller_Set_compZoneColEnd(XAtomflow_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONECOLEND_DATA, Data);
}

u32 XAtomflow_controller_Get_compZoneColEnd(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_COMPZONECOLEND_DATA);
    return Data;
}

u32 XAtomflow_controller_Get_moveCount(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_MOVECOUNT_DATA);
    return Data;
}

u32 XAtomflow_controller_Get_moveCount_vld(XAtomflow_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_MOVECOUNT_CTRL);
    return Data & 0x1;
}

void XAtomflow_controller_InterruptGlobalEnable(XAtomflow_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_GIE, 1);
}

void XAtomflow_controller_InterruptGlobalDisable(XAtomflow_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_GIE, 0);
}

void XAtomflow_controller_InterruptEnable(XAtomflow_controller *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IER);
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IER, Register | Mask);
}

void XAtomflow_controller_InterruptDisable(XAtomflow_controller *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IER);
    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAtomflow_controller_InterruptClear(XAtomflow_controller *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAtomflow_controller_WriteReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_ISR, Mask);
}

u32 XAtomflow_controller_InterruptGetEnabled(XAtomflow_controller *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_IER);
}

u32 XAtomflow_controller_InterruptGetStatus(XAtomflow_controller *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAtomflow_controller_ReadReg(InstancePtr->Control_BaseAddress, XATOMFLOW_CONTROLLER_CONTROL_ADDR_ISR);
}

