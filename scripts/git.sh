# Git
sudo apt-get install -y git
git config --global credential.helper "cache --timeout=1314000"
git config --global user.email "m.hartvigsen@gmail.com"
git config --global user.name "Morten Hartvigsen"
git config --global push.default current

mkdir ~/.ssh
chmod 700 ~/.ssh
