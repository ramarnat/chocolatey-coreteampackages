﻿$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $exeDir = "$installDir\youtube-dl.exe"

  Get-ChocolateyWebFile $packageName $exeDir $url

  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}
