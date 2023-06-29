  > *Quick tool that's only public so my friends can access it. Go and support the [yt-dlp](https://github.com/yt-dlp/yt-dlp)" project directly. Otherwise, use at your own risk..*
  

## Cavalier Playlist Scraper for YouTube

CLI tool for Windows using powershell to quickly convert youtube
playlists and individual songs to low quality mp3s from the yt-dlp project.


## Prerequisites to download

Some should automatically dowload via the script, if that doesn't work, download and install them in your Windows 
Path directly.

- (Auto-downloaded by script) [yt-dlp](https://github.com/yt-dlp/yt-dlp) 
- (Auto-downloaded by script) [ffmpeg](https://github.com/FFmpeg/FFmpeg)
- [Git For Windows](https://gitforwindows.org/)

<br/>


## Installing *Git For Windows*

Navigate to [Git For Windows](https://gitforwindows.org/) website, find and run the installer.

> The default options will insert git into your windows PATH which you want. 
> It will run from PowerShell, CMD, and "git bash" shell based on Msys (a Linux-like Gnu dev environment for Windows from the MinGW project)

To see if git is already installed, run `cmd.exe` and enter
    
```cmd
git --version
```

You should see something like 

> git version 2.33.0.windows.2  

If you see this,  **git** is installed.

## Clone **youtube-playlist-scraper** repository

### For previously cloned updates

Note: You only need to do this when you are first copying the repo. Afterwards, just navigate to the directory where you originally cloned it. 

First find the folder in windows where you originally cloned this repo. Once found, in the address bar of Windows Explorer, click the icon in the address bar that reads what folder you're in (ie My Computer, Documents, Downloads...). That will let you copy the _absolute_ path to your clipboard (control + c) to where the repository was cloned on your pc.

Now, type `windows key` + R and type `cmd` and enter the following:

```cmd
cd "C:/THE/ABSOLUTE/PATH/TO/youtube-playlist-scraper"
```
or wherever it was cloned.

Now you're ready to go, just grab the fresh code with:
```
git pull
```
and you're on your way


<br/>

### For New Installations

1. Press and hold `WinKey + R` together to open a run dialog box. 

2. In the text field, type `cmd` and hit `enter` which will spawn a new terminal window.

<br/>

*This will fail if you do not have the Powershell executable in one of your system paths.*

> Note: If this doesn't work, [configure PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2) to work with your system.

<br/>

3. From the run dialog box:
```cmd
powershell.exe
```
4. In the resulting terminal window, run the following:
```powershell
cd ~
git clone "https://github.com/ocmca/youtube-playlist-scraper.git"
cd "youtube-playlist-scraper/"
```

This accomplishes
- switching to your home directory
- cloning the repository there into it's own folder
- changing current directory to where the repo is cloned

## Scraping Your Playlist

Now find the URL for your track or playlist and copy it.

From the command line, run the .bat file and follow the instructions:

```powershell
./run_me.bat
```

or include the playlist url, or simply just the ?list= parameter 

```powershell
./run_me.bat "https://www.youtube.com/playlist?list=PLg4Lm9LFizA6Lhaq60mPiQPWHFNGn5M-S"
```
