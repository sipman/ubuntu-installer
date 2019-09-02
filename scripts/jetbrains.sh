# JetBrains Toolbox
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.11.4269.tar.gz
tar -xzvf jetbrains-toolbox-1.11.4269.tar.gz
cd jetbrains-toolbox-1.11.4269/
./jetbrains-toolbox
cd ..
rm -r jetbrains-toolbox-1.11.4269/
rm jetbrains-toolbox-1.11.4269.tar.gz
sudo bash -c "echo 'fs.inotify.max_user_watches = 524288' >> /etc/sysctl.d/idea.conf"
sudo sysctl -p --system