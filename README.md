## Hackintosh Chime Boot Sound

![alt tag](http://f.cl.ly/items/1C3R1E3z3j400U3U2e0h/Screen%20Shot%202013-08-13%20at%2011.26.31%20AM.png)

*Carillon* is an open source OS X app, specifically for Hackintosh machines, that plays the classic "Chime" boot sound on startup that real Macs have.

A new launch daemon will be added that triggers the sound, meaning, unlike most similar apps, this one runs much earlier during the boot process, even before the login screen appears.
No crappy AppleScript solution that triggers when you're already on the Desktop, no outdated PrefPane

It has currently been tested on OS X 10.8.2 and 10.8.5, but it should work on previous and future versions as well. Please [report](https://github.com/nicoSWD/Carillon/issues/new) any issues you may have.

No new icons or settings will be added. Reboot your system to enjoy.

There's a [demo video](https://www.youtube.com/watch?v=rz4-uqiShlg) on YouTube.

**ALTERNAVIVE VERSION**
I added a new release, which uses a different approach to play the audio. If you're having troubles with the old one, give it a shot.
[Download v1.2b here](https://github.com/nicoSWD/Carillon/releases/tag/v1.2b)


**DOWNLOADS**

- Newest
  - [Carillon v1.1b](https://github.com/nicoSWD/Carillon/releases/tag/v1.1b) (MD5 checksum: 86907beb4cf27f877d7078a805062011)
- Older releases
  - [Carillon v1.0b](https://nicoswd.com/public/files/carillon/Carillon-Installer-v1.0.zip) (MD5 checksum: 082c41070b01e43963e7f49058b537d2)
  

**UNINSTALL**

To uninstall Carillon, remove the following files from your system:
- /usr/local/bin/Carillon
- /System/Library/LaunchDaemons/com.nicoswd.Carillon.plist


**NOTES**

- This should work for everyone using USB audio adapters and/or AppleHDA.kext for the sound. If you're using another kext to get your sound working, please let me know.
- To edit the Package installer, you need PackageManager, which comes in the Auxiliary Tools bundle, which you can download here: [PackageManager](http://adcdownload.apple.com/Developer_Tools/auxiliary_tools_for_xcode__late_july_2012/xcode44auxtools6938114a.dmg) (Developer account required)
- While this should work just fine on a real Mac, I would not suggest installing it on one.
- I'm aware that "chime" doesn't exactly classify as "carillon", but I liked the name, so deal with it. ;p


**CHANGELOG**
- v1.1b
  - Loads AppleHDA.kext before playing the sound
- v1.0b
  - Initial release
  

**MIT/X11 LICENSE**

Copyright (C) 2013 Nicolas Oelgart

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
