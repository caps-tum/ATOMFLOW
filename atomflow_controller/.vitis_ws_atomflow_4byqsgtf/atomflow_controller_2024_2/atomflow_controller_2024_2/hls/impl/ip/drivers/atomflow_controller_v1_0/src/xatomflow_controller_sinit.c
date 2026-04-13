// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xatomflow_controller.h"

extern XAtomflow_controller_Config XAtomflow_controller_ConfigTable[];

#ifdef SDT
XAtomflow_controller_Config *XAtomflow_controller_LookupConfig(UINTPTR BaseAddress) {
	XAtomflow_controller_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XAtomflow_controller_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XAtomflow_controller_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XAtomflow_controller_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAtomflow_controller_Initialize(XAtomflow_controller *InstancePtr, UINTPTR BaseAddress) {
	XAtomflow_controller_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAtomflow_controller_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAtomflow_controller_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XAtomflow_controller_Config *XAtomflow_controller_LookupConfig(u16 DeviceId) {
	XAtomflow_controller_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XATOMFLOW_CONTROLLER_NUM_INSTANCES; Index++) {
		if (XAtomflow_controller_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAtomflow_controller_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAtomflow_controller_Initialize(XAtomflow_controller *InstancePtr, u16 DeviceId) {
	XAtomflow_controller_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAtomflow_controller_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAtomflow_controller_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

