cd "`dirname "$0"`/../"

nw=$(cat nwversion.txt)
# nwa=$(cat nwarch.txt)
nwa=64
appname=$(cat appname.txt)

cd ..

hash npm 2>/dev/null || {
  echo >&2 "You must install Node.js and npm to run this program: http://nodejs.org"
  exit 1
}

if [ ! -d "app/node_modules" ]; then
  cd app
  mv package.json package.json.backup
  mv .package.npm.json package.json
  npm install
  mv package.json .package.npm.json
  mv package.json.backup package.json
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

if [ ! -d "dev/linux/node-webkit-v$nw-linux-ia$nwa" ]; then
  echo "Downloading node-webkit v$nw development environment..."
  wget http://dl.node-webkit.org/v$nw/node-webkit-v$nw-linux-ia$nwa.tar.gz
  tar -zxf node-webkit-v$nw-linux-ia$nwa.tar.gz -C .
  rm node-webkit-v$nw-linux-ia$nwa.tar.gz
  mv node-webkit-v$nw-linux-ia$nwa dev/linux/
fi

if [ ! -d "build" ]; then
  mkdir build
fi

# todo: app icons

rm -rf "build/$appname"
cd app
zip -r ../${PWD##*/}.nw *
cd ..
mv app.zip build/$appname