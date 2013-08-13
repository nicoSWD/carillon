## Hackintosh Chime Boot Sound

![alt tag](http://f.cl.ly/items/320r3B0g0v1L0L2j363A/Screen%20Shot%202013-08-13%20at%2010.08.37%20AM.png)

*Carillon* is an open source OS X app, specifically for Hackintosh machines, that plays the classic "Chime" boot sound on startup that real Macs have.

A new launch deamon will be added that triggers the sound, meaning, unlike most similar apps, this one runs much earlier during the boot process, even before the login screen appears.

It has currently been tested on OS X 10.8.2, but it should work on previous versions as well. Please report any issues you may have.

No new icons or settings will be added. Reboot your system to enjoy.


**DOWNLOADS**

- Newest
  - [Carillon v1.0](https://nicoswd.com/public/files/carillon/Carillon-Installer-v1.0.zip) (MD5 checksum: 082c41070b01e43963e7f49058b537d2)
- Older releases
  - None so far
  

**UNINSTALL**

To uninstall Carillon, remove the following files from your system:
- /usr/local/bin/Carillon
- /System/Library/LaunchDaemons/com.nicoswd.Carillon.plist


**NOTES**

- To edit the Package installer, you need PackageManager, which comes in the Auxiliary Tools bundle, which you can download here: [PackageManager](http://adcdownload.apple.com/Developer_Tools/auxiliary_tools_for_xcode__late_july_2012/xcode44auxtools6938114a.dmg) (Developer account required)
- While this should work just fine on a real Mac, I would not suggest installing it on one.
- I'm aware that "chime" doesn't exactly classify as "carillon", but I liked the name, so deal with it. ;p


**CHANGELOG**
- v1.0
  - Initial release
  

**MIT/X11 LICENSE**

Copyright (C) 2013 Nicolas Oelgart

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.