clear-host
 $repo = "new370/test1"
 $releases = "https://gitlab.com/$repo/releases"
 Write-Host Determining latest release
 $tag = (Invoke-WebRequest $releases | ConvertFrom-Json)[0].tag_name
 $FileName = "swiss_"+$tag.Substring(4,5)+".7z"
 $FilePath = "$Env:Temp\$FileName"
 $download = "https://gitlab.com/$repo/releases/download/$tag/$file"
 $download
 $FilePath
 Write-Host Dowloading latest release
 Try{Invoke-WebRequest $download -Out "$FilePath"} Catch {write-host "$_.Exception.Message" -fore Red;break}
 [console]::beep(500,1000)
 Write-Host "Download is completed and saved in this path : $FilePath" -ForegroundColor Cyan