# NPM
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs


# NVM
sudo apt-get install build-essential libssl-dev -y
curl https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc
nvm install stable
nvm use stable
