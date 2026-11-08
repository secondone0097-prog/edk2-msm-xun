// per-device BSP DXEs
INF Platform/EFI_Binaries/Drivers/sm6225/ButtonsDxe/ButtonsDxe.inf

// ACPI Tables (first test: reuse fog DSDT, UEFI does not parse it until an OS asks)
FILE FREEFORM = 7E374E25-8E01-4FEE-87F2-390C23C606CD {   
  SECTION RAW = Platform/Xiaomi/sm6225/AcpiTables/fog/DSDT.aml
  SECTION RAW = Silicon/Qualcomm/sm6225/AcpiTables/MADT.aml
  SECTION RAW = Silicon/Qualcomm/sm6225/AcpiTables/FADT.aml
  SECTION RAW = Silicon/Qualcomm/sm6225/AcpiTables/GTDT.aml
  SECTION UI = "AcpiTables"
}

// Mainline device tree blob (first test: reuse fog blob)
 FILE FREEFORM = 25462CDA-221F-47DF-AC1D-259CFAA4E326 {
  SECTION RAW = Platform/Xiaomi/sm6225/FdtBlob_compat/fog.dtb
}

