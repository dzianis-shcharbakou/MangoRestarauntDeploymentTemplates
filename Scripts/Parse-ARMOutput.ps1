param (
    [Parameter(Mandatory=$true)][string]$ARMOutput
    )

$json = '$(armOutputs)' | convertfrom-json
$value = $json.blobStorageName.value
Write-Host "##vso[task.setvariable variable=blobStorageName;]$value"