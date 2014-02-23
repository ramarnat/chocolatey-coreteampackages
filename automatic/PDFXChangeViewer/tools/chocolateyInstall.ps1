﻿$packageName = '{{PackageName}}'
$installerType = 'exe'
$url = '{{DownloadUrl}}'
$url64 = $url
$silentArgs = '/VERYSILENT /NOINSTASK'
$validExitCodes = @(0)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url $url64 -validExitCodes $validExitCodes
