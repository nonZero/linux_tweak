#Adding auto mounting WD ShareSpace

echo "Adding automount string to fstab..."
mkdir /mnt/wd
cp /etc/fstab /etc/fstab.backup
cat ./fstab/fstab.add >> /etc/fstab
echo "Automount string added!"
