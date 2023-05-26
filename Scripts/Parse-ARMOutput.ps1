param (
    [Parameter(Mandatory=$true)][string]$ARMOutput
    )

#region Convert from json
$json = $ARMOutput | convertfrom-json
#endregion

#region Parse ARM Template Output
Write-Output -InputObject ('Hello {0}' -f $json.blobStorageName.value)
#endregion