require java.sh

# Ensure java 8 is used as android is old
sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

ANDROID_HOME="/usr/lib/android-sdk/"
SDKMANAGER=${ANDROID_HOME}tools/bin/sdkmanager
FILE=$(curl -s 'https://developer.android.com/studio#downloads' -o- | grep -o -m1 "sdk-tools-linux-[0-9]*.zip")

echo https://dl.google.com/android/repository/$FILE
wget https://dl.google.com/android/repository/$FILE

sudo mkdir $ANDROID_HOME
sudo mv $FILE $ANDROID_HOME
cd $ANDROID_HOME
sudo unzip $FILE
sudo rm $FILE
sudo chmod -R 777 $ANDROID_HOME

# Fix .bashrc
echo "# Android SDK" >> ~/.bashrc
echo "export ANDROID_HOME=\"${ANDROID_HOME}\"" >> ~/.bashrc
echo "export PATH=\"\${PATH}:\${ANDROID_HOME}tools/:\${ANDROID_HOME}tools/bin:\${ANDROID_HOME}platform-tools/\"" >> ~/.bashrc

# Install latest android vesion
$SDKMANAGER --update
yes | $SDKMANAGER --licenses
$SDKMANAGER "platform-tools" "platforms;android-28"
yes | $SDKMANAGER --licenses

unset ANDROID_HOME
unset FILE