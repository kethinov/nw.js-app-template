var gui = require('nw.gui'),
    app = gui.Window.get(),
    nativeMenuBar = new gui.Menu({type: 'menubar'});

// render native mac menus
if (nativeMenuBar) {
  nativeMenuBar.createMacBuiltin('App Name', {
    // hideEdit: true,
    // hideWindow: true
  });
  app.menu = nativeMenuBar;
}

// handles cmd+q on OS X
app.on('close', function() {
  gui.App.quit();
});

// hide window until fully loaded
window.addEventListener('load', function() {
  gui.Window.get().show();
  gui.Window.get().focus();
});