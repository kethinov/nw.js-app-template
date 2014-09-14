<img src='https://raw.github.com/kethinov/node-webkit-app-template/master/dev/appicon.png' alt='' width='32' height='32'> node-webkit-app-template [![Gittip](http://img.shields.io/gittip/kethinov.png)](https://www.gittip.com/kethinov/)
===

Sample node-webkit app with all the boilerplate you need to just get started coding on your app with simple build scripts for ~~Linux~~, Mac, and ~~Windows~~.

Currently only Mac is supported, but Linux and Windows are coming soon.

Run the app
===

- Mac: open `dev/mac/start.command`.

Build the app
===

- Mac: open `dev/mac/build.command`. Fully-built .app files will be located in the `build` directory.

Customize things
===

To change the app's name, you need to replace all occurances of "App Name" in the following files:

- `main.html` (HTML page title)
- `main.js` (for native Mac menus)
- `package.json` (node-webkit derives app name for the OS from this file)
- `dev/appname.txt` (used for builds)
- `dev/mac/Info.plist` (Mac OS X derives app name for the OS from this file)

And optionally in:

- `.package.npm.json` (hack file needed to deal with an [npm bug](https://github.com/npm/npm/issues/5490))
- `bower.json` (bower doesn't allow name field to be empty)

To change the app icon, replace `dev/appicon.png` with your app icon. A resolution of 1024x1024 or higher is recommended to support all OS and screen combinations.

To change the version of node-webkit your app is built from, change the version number in `dev/nwversion.txt`.

License
===

All original code is licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/). Commercial and noncommercial use is permitted with attribution.