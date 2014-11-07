cd "`dirname "$0"`/../"

nw=$(cat nwversion.txt)
# nwa=$(cat nwarch.txt)
nwa=x64
# nwa=ia32

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
  wget http://dl.node-webkit.org/v$nw/node-webkit-v$nw-linux-$nwa.tar.gz
  tar -zxf node-webkit-v$nw-linux-$nwa.tar.gz -C .
  rm node-webkit-v$nw-linux-$nwa.tar.gz
  mv node-webkit-v$nw-linux-$nwa dev/linux/
fi

./dev/linux/node-webkit-v$nw-linux-$nwa/nw app/