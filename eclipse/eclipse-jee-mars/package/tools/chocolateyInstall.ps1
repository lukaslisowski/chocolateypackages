$url = 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-win32.zip'
$url64 = 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-win32-x86_64.zip'
$packageName = 'eclipse-jee-mars' 
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$target = Join-Path $toolsDir "eclipse\eclipse.exe"
Install-ChocolateyDesktopLink $target