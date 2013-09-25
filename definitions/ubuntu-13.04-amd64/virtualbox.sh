if test -f /home/vagrant/.vbox_version; then
  apt-get -y install --no-install-recommends libdbus-1-3
  apt-get install -y dkms

  if [ -f /etc/init.d/virtualbox-ose-guest-utils ]; then
    /etc/init.d/virtualbox-ose-guest-utils stop
    rmmod vboxguest

    aptitude -y purge virtualbox-ose-guest-x11 virtualbox-ose-guest-dkms virtualbox-ose-guest-utils
  fi

  VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
  VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso

  mount -o loop $VBOX_ISO /mnt
  yes | sh /mnt/VBoxLinuxAdditions.run
  umount /mnt

  rm -f $VBOX_ISO

  /etc/init.d/vboxadd start

  mkdir /tmp/veewee-validation
  mount -t vboxsf veewee-validation /tmp/veewee-validation
fi