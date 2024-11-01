@echo off
rem Get the activation status using WMIC
for /f "tokens=2 delims==" %%A in ('wmic path SoftwareLicensingProduct where "PartialProductKey is not null" get LicenseStatus /value') do set "LicenseStatus=%%A"

rem Check if the LicenseStatus is 1 (which means activated)
if "%LicenseStatus%"=="1" (
    echo Windows is Activated
) else (
    echo Windows is Not Activated
)