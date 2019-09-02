# Java 8

wget http://security.ubuntu.com/ubuntu/pool/universe/o/openjdk-8/openjdk-8-jdk-headless_8u191-b12-2ubuntu0.18.10.1_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/universe/o/openjdk-8/openjdk-8-jdk_8u191-b12-2ubuntu0.18.10.1_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/universe/o/openjdk-8/openjdk-8-jre_8u191-b12-2ubuntu0.18.10.1_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/universe/o/openjdk-8/openjdk-8-jre-headless_8u191-b12-2ubuntu0.18.10.1_amd64.deb

sudo dpkg -i openjdk-8-jre-headless_8u191-b12-2ubuntu0.18.10.1_amd64.deb openjdk-8-jre_8u191-b12-2ubuntu0.18.10.1_amd64.deb openjdk-8-jdk_8u191-b12-2ubuntu0.18.10.1_amd64.deb openjdk-8-jdk-headless_8u191-b12-2ubuntu0.18.10.1_amd64.deb
rm openjdk-8-jre-headless_8u191-b12-2ubuntu0.18.10.1_amd64.deb openjdk-8-jre_8u191-b12-2ubuntu0.18.10.1_amd64.deb openjdk-8-jdk_8u191-b12-2ubuntu0.18.10.1_amd64.deb openjdk-8-jdk-headless_8u191-b12-2ubuntu0.18.10.1_amd64.deb

sudo apt install -f