cd "`dirname "$0"`/../"

nw=$(cat nwversion.txt)
nwa=$(cat nwarch.txt)
if [ "$nwa" = "64" ]; then
  nwa=x64
else
  nwa=ia32
fi
appname=$(cat appname.txt)

cd ..

hash npm 2>/dev/null || {
  echo >&2 "You must install npm to run this program: http://npmjs.org"
  exit 1
}

if [ ! -d "app/node_modules" ]; then
  cd app
  npm install
  cd ..
fi

hash bower 2>/dev/null || {
  echo >&2 "You must install bower to run this program: http://bower.io"
  exit 1
}

if [ ! -d "app/bower_components" ]; then
  cd app
  bower install
  cd ..
fi

if [ ! -d "dev/linux/nwjs-v$nw-linux-$nwa" ]; then
  echo "Downloading nwjs v$nw development environment..."
  wget http://dl.nwjs.org/v$nw/nwjs-v$nw-linux-$nwa.tar.gz
  tar -zxf nwjs-v$nw-linux-$nwa.tar.gz -C .
  rm nwjs-v$nw-linux-$nwa.tar.gz
  mv nwjs-v$nw-linux-$nwa dev/linux/
fi

if [ ! -d "build" ]; then
  mkdir build
fi

# todo: app icons

rm -rf "build/$appname"
cd app
zip -r ../${PWD##*/}.nw *
cd ..
mv app.nw build/$appname

# todo: Step 2a or Step 2b