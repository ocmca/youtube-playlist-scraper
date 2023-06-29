# the path to this script
$loc = Resolve-Path "${PSScriptRoot}"
$loc = Set-Location -Path $loc/../

Write-Output "Checking for and if not found, downloading the ffmpeg library offsite to save github bandwidth."

Write-Output "Checking for .bin...";
if (!(Test-Path -Path "bin" -Verbose)) {
    mkdir "bin"
}

Write-Output "Checking for ffmpeg...";

# check to make sure we have our binaries first
if (!(Test-Path './bin/ffmpeg.exe')) {
    $source = "https://owenalek.com/bin/ffmpeg.exe";
    $destination = "./bin/ffmpeg.exe";
    Invoke-RestMethod -Uri $source -OutFile $destination
}
else {
    Write-Output "ffmpeg found."
}

Write-Output "Checking for yt-dlp...";

# check to make sure we have our binaries first
if (!(Test-Path 'bin/yt-dlp.exe')) {
    $source = "https://owenalek.com/bin/yt-dlp.exe";
    $destination = "bin/yt-dlp.exe";
    Invoke-RestMethod -Uri $source -OutFile $destination
}
else {
    Write-Output "yt-dlp found."
    Invoke-Expression "bin/yt-dlp -U"
}

Write-Output "Checking for ffplay...";

# check to make sure we have our binaries first
if (!(Test-Path 'bin/ffplay.exe')) {
    $source = "https://owenalek.com/bin/ffplay.exe";
    $destination = "bin/ffplay.exe";
    Invoke-RestMethod -Uri $source -OutFile $destination
}
else {
    Write-Output "ffplay found."
}

Write-Output "Checking for ffprobe...";

# check to make sure we have our binaries first
if (!(Test-Path 'bin/ffprobe.exe')) {
    $source = "https://owenalek.com/bin/ffprobe.exe";
    $destination = '/bin/ffprobe.exe';
    Invoke-RestMethod -Uri $source -OutFile $destination
}
else {
    Write-Output "ffprobe found."
}

$baseUrl = "https://www.youtube.com/playlist?list="
$baseUrl = $baseUrl.Replace("www.","")

if ($null -eq $Args[0]) {
    $URL = ""
}
else {
    $playlistId = $Args[0]
    if ($playlistId.IndexOf("=")) {
        $split = $playlistId.Split("=")
        $URL = $split[0] + "=" + $split[1]
    }
    else {
        $URL = $baseUrl + $playlistId
    }
}

Start-Sleep 2

while ($URL.Replace($baseUrl + "=", '') -eq '') {
    Write-Host "`n`nFound playlist url: $URL...`n`n"
    $URL = Read-Host "Enter Youtube Playlist / Video URL"
}

Write-Host "*****************************"
Write-Host "Hello Human! Be kind. Rewind."
Write-Host "*****************************`n`n"

$theDate = (get-date).year.ToString() + "-" + (get-date).month.ToString() + "-" + (get-date).day

if (!(Test-Path -Path "$loc/songs")) {
    mkdir "$loc/songs"
}

if (!(Test-Path -Path "${loc}/songs/${theDate}")) {
    mkdir "$loc/songs/$theDate"
}

$parms = "--default-search ""ytsearch"" -o ""$loc/songs/\$theDate/%(title)s-dl.%(ext)s"" -x --audio-format mp3 --audio-quality 5 --download-archive d-archive.txt --playlist-random ${URL}"

# Write-Output $parms

Invoke-Expression "./bin/yt-dlp.exe ${parms}"
