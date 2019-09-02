wget https://download.zotero.org/client/release/5.0.66/Zotero-5.0.66_linux-x86_64.tar.bz2
tar -xvf Zotero-5.0.66_linux-x86_64.tar.bz2
rm Zotero-5.0.66_linux-x86_64.tar.bz2
sudo mv Zotero_linux-x86_64/ /opt/zotero
cd /opt/zotero/
./set_launcher_icon
ln -s /opt/zotero/zotero.desktop ~/.local/share/applications/zotero.desktop
