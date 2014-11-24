<img src='https://raw.github.com/kethinov/node-webkit-app-template/master/dev/appicon.png' alt='' width='24' height='24'> node-webkit app template [![Gittip](http://img.shields.io/gittip/kethinov.png)](https://www.gittip.com/kethinov/)
===

Sample [node-webkit](https://github.com/rogerwang/node-webkit) app with all the boilerplate you need to just get started coding on your app with simple build scripts for Linux, Mac, and ~~Windows~~.

Currently only Mac is fully supported. Linux is partially supported (run but not build) and Windows is coming soon.

Get started
===

First, just [download this code](https://github.com/kethinov/node-webkit-app-template/archive/master.zip).

Then start hacking on your app and run it!

Run the app without building it
===

- Mac: open `dev/mac/start.command`.
- Linux: open `dev/linux/start.sh`.

Build an app executable for distribution
===

- Mac: open `dev/mac/build.command`. Fully-built .app files will be located in the `build` directory.
- Linux: open `dev/linux/build.sh`. *This is a work in progress. Not fully functional yet.*

Customizing your app
===

To change the app's name, you need to replace all occurances of "App Name" in the following files:

- `main.html` (HTML page title)
- `main.js` (for native Mac menus)
- `package.json` (node-webkit derives app name for the OS from this file)
- `dev/appname.txt` (used for builds)
- `dev/mac/Info.plist` (Mac OS X derives app name for the OS from this file)

And optionally in:

- `bower.json` (bower doesn't allow name field to be empty)

To change the app icon, replace `dev/appicon.png` with your app icon. A resolution of 1024x1024 or higher is recommended to support all OS and screen combinations.

To change the version of node-webkit your app is built from, change the version number in `dev/nwversion.txt`.

To change the architecture node-webkit is targeting, change architecture number in `dev/nwarch`. Accaptable values are `32` and `64`.

License
===

All original code is licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/). Commercial and noncommercial use is permitted with attribution.