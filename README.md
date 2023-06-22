  > ***Don't use this. It's only public so my friends can quickly access it. Go and use the [yt-dlp](https://github.com/yt-dlp/yt-dlp) project directly.***
  
  -----------------------------------------------
 
> S o m e   s p a c e   t o   a c c e n t u a t e   t h e   a b o v e   s t a t e m e n t.
   
  -----------------------------------------------

## Super Janky YouTube Playlist Scraper for Powershell

Command-line tool for Windows to quickly convert youtube
playlists and individual songs to low quality mp3s.


## Dependencies

- (Auto-downloaded) [yt-dlp](https://github.com/yt-dlp/yt-dlp) 
- (Auto-downloaded) [ffmpeg](https://github.com/FFmpeg/FFmpeg)
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


If you see this, you have git.

<br/>

## Clone **youtube-playlist-scraper-powershell** repository

### For previously cloned updates

Note: You only need to do this when you are first copying the repo. Afterwards, just navigate to the directory where you originally cloned it. 

First find the folder in windows where you originally cloned this repo. Once found, in the address bar of Windows Explorer, click the icon in the address bar that reads what folder you're in (ie My Computer, Documents, Downloads...). That will let you copy the _absolute_ path to your clipboard (control + c) to where the repository was cloned on your pc.

Now, type `windows key` + R and type `cmd` and enter the following:

```cmd
cd "C:/THE/ABSOLUTE/PATH/TO/youtube-scraper-powershell" # or wherever it is. I hope that's not where you cloned it.

# Now you're ready to go, just grab fresh with:

git pull

# and you're on your way
```

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
git clone "https://github.com/ocmca/youtube-playlist-scraper-powershell.git"
cd "youtube-playlist-scraper-powershell/"
```

This has also
- switched to your home directory
- cloned the repository there, and
- changed directories

Now find the URL for your track or playlist and copy it.

From the command line, run the .bat file and follow the instructions:

```powershell
./run_me.bat
```

# or include the playlist url, or simplt just the ?list= parameter 

```powershell
./run_me.bat "https://www.youtube.com/playlist?list=PLg4Lm9LFizA6Lhaq60mPiQPWHFNGn5M-S"
```

