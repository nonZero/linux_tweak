#Start up customization

echo "Tweaking rc.local..."
cp /etc/rc.local /etc/rc.local.backup
cp ./rclocal/rc.local /etc/rc.local
echo "Tweaking rc.local. Done!"
