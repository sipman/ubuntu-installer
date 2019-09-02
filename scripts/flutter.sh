require android.sh

FLUTTER_PATH=/opt/flutter
FLUTTER_BIN=${FLUTTER_PATH}/bin/flutter

# get repo
sudo mkdir $FLUTTER_PATH
sudo chmod -R 777 $FLUTTER_PATH
cd $FLUTTER_PATH
git clone git@github.com:flutter/flutter.git .

$FLUTTER_BIN precache
$FLUTTER_BIN doctor

# Fix .bashrc
echo "# Flutter SDK" >> ~/.bashrc
echo "export PATH=\"\${PATH}:${FLUTTER_PATH}/bin/\"" >> ~/.bashrc
