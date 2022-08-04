echo 'Ensure device is in pwnDFU mode with sigchecks removed.'
sleep 1

irecovery -f boot/iBSS.img4
# send iBSS again.
irecovery -f boot/iBSS.img4
irecovery -f boot/iBEC.img4
irecovery -f boot/bootlogo.img4
irecovery -c "setpicture 0"
irecovery -c "bgcolor 0 0 0"
sleep 3
irecovery -f boot/devicetree.img4
irecovery -c devicetree
irecovery -f boot/trustcache.img4
irecovery -c firmware
irecovery -f boot/krnlboot.img4
irecovery -c bootx