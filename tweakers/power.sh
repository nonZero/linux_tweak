#Adding powersaving options to /etc/acpi/power.sh file

echo "Replacing default power.sh with tweaked power.sh file..."
cp /etc/acpi/power.sh /etc/acpi/power.sh.backup
cp ./power.sh /etc/acpi/power.sh
echo "power.sh tweaked"
