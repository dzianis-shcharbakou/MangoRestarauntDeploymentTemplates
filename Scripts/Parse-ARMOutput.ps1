param (
    [Parameter(Mandatory=$true)][string]$ARMOutput
    )

#region Convert from json
$json = $ARMOutput | convertfrom-json
#endregion
$result = $json.blobStorageName.value
#region Parse ARM Template Output
Write-Host "##vso[task.setvariable variable=env:blobStorageName]$result"
#endregion