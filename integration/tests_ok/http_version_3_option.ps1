Set-StrictMode -Version latest
$ErrorActionPreference = 'Stop'

$ErrorActionPreference = 'Continue'
curl --version | grep Features | grep -q HTTP3
if ($LASTEXITCODE -eq 1) {
  exit 255
}
$ErrorActionPreference = 'Stop'

hurl tests_ok/http_version_3_option.hurl
