$packageName    = 'wazuh-agent'
$installerType  = 'msi'
$url            = 'https://packages.wazuh.com/windows/wazuh-agent-2.1.1-1.msi'
$url64          = $url
$checksum       = "fd9a3ce30cd6f9f553a1bc71e74a6c9f"
$silentArgs     = '/q'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -checksum $checksum -validExitCodes $validExitCodes