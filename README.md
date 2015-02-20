<img src='https://raw.github.com/kethinov/nw.js-app-template/master/dev/appicon.png' alt='' width='24' height='24'> nw.js app template [![Gittip](http://img.shields.io/gittip/kethinov.png)](https://www.gittip.com/kethinov/)
===

Sample [nw.js](https://github.com/nwjs/nw.js) app with all the boilerplate you need to just get started coding on your app with simple build scripts for Linux, Mac, and ~~Windows~~.

Currently only Mac is fully supported. Linux is partially supported ([run but not build](https://github.com/kethinov/nw.js-app-template/issues/1)) and Windows is [coming soon](https://github.com/kethinov/nw.js-app-template/issues/2).

Get started
===

First, just [download this code](https://github.com/kethinov/nw.js-app-template/archive/master.zip).

Then start hacking on your app and run it!

Run the app without building it
===

- Mac: open `dev/mac/start.command`.
- Linux: open `dev/linux/start.sh`.

Build an app executable for distribution
===

- Mac: open `dev/mac/build.command`. Fully-built .app files will be located in the `build` directory.
- Linux: open `dev/linux/build.sh`. *[This is a work in progress. Not fully functional yet.](https://github.com/kethinov/nw.js-app-template/issues/1)*

Customizing your app
===

App name
---

To set the app's name, you need to replace the placeholder text in the following files:

All platforms:
- `main.html`: HTML page title sets window title
- `dev/appname.txt`: sets the app's name on the task manager / dock (for builds only)

Mac only:
- `dev/mac/Info.plist`: sets app name in the native Mac menubar
- `main.js`: see the line which reads `nativeMenuBar.createMacBuiltin('App Name', { ...` to set the app's name in the native Mac menubar's menus

- `bower.json` (bower doesn't allow name field to be empty)

App icon
---

To set the app icon, replace `dev/appicon.png` with your app icon. A resolution of 1024x1024 or higher is recommended to support all OS and screen combinations.

nw.js version
---

To set the version of nw.js your app is built from, change the version number in `dev/nwversion.txt`. See what the most recent version is [here](https://github.com/nwjs/nw.js#downloads).

64 bit vs. 32 bit
---

To set the architecture nw.js is targeting, change architecture number in `dev/nwarch.txt`. Acceptable values are `32` and `64`.

License
===

All original code is licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/). Commercial and noncommercial use is permitted with attribution.