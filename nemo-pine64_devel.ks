# DisplayName: GlacierUX/aarch64 (release) 2018.05
# KickstartType: release
# SuggestedImageType: fs
# SuggestedArchitecture: aarch64

lang en_US.UTF-8
keyboard us
user --name nemo --groups audio,video,timed,sailfish-system --password=nemo
timezone --utc UTC

### Commands from /tmp/sandbox/usr/share/ssu/kickstart/part/default
part / --size 800 --ondisk sda --fstype=ext4

## No suitable configuration found in /tmp/sandbox/usr/share/ssu/kickstart/bootloader

repo --name=mer-core --baseurl=http://repo.merproject.org/obs/home:/neochapay:/mer:/core/latest_aarch64
repo --name=mer-qt --baseurl=http://repo.merproject.org/obs/home:/neochapay:/mer:/qt/latest_aarch64
repo --name=mer-mw --baseurl=http://repo.merproject.org/obs/home:/neochapay:/mer:/mw/latest_aarch64
repo --name=nemo-ux --baseurl=http://repo.merproject.org/obs/home:/neochapay:/mer:/nemo-devel-ux/latest_aarch64
repo --name=device --baseurl=http://repo.merproject.org/obs/home:/neochapay:/mer:/release:/2019.11:/hardware:/pine64/latest_aarch64/

%packages
#if you have modules
module-init-tools
procps

#this packages must be added into requires
qt5-qtfeedback #BUG glacier-home #91
kf5bluezqt-bluez5-declarative #BUG glacier-serrings #16

#master packages
lipstick-glacier-home-qt5
glacier-calc
glacier-camera
glacier-filemuncher
glacier-gallery
glacier-music
glacier-settings
glacier-messages
glacier-packagemanager

nemo-firstsession
nemo-mobile-session-wayland

plymouth-lite-theme-default

#dev packages
passwd
vim
setup
strace
gdb
zypper
connman-tools
glacier-settings-developermode

#device package
nemo-device-dont_be_evil
kernel-dont_be_evil

%end
%pre
export SSU_RELEASE_TYPE=release
### begin 01_init
touch $INSTALL_ROOT/.bootstrap
### end 01_init
%end

%post
export SSU_RELEASE_TYPE=release
### begin 01_arch-hack
# Without this line the rpm does not get the architecture right.
echo -n "aarch64-meego-linux" > /etc/rpm/platform

# Also libzypp has problems in autodetecting the architecture so we force tha as well.
# https://bugs.meego.com/show_bug.cgi?id=11484
echo "arch = aarch64" >> /etc/zypp/zypp.conf

### end 01_arch-hack
### begin 01_rpm-rebuilddb
# Rebuild db using target's rpm
echo -n "Rebuilding db using target rpm.."
rm -f /var/lib/rpm/__db*
rpm --rebuilddb
echo "done"
### end 01_rpm-rebuilddb
### begin 50_oneshot
# exit boostrap mode
rm -f /.bootstrap

# export some important variables until there's a better solution
export LANG=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export GSETTINGS_BACKEND=gconf

# run the oneshot triggers for root and first user uid
UID_MIN=$(grep "^UID_MIN" /etc/login.defs |  tr -s " " | cut -d " " -f2)
DEVICEUSER=`getent passwd $UID_MIN | sed 's/:.*//'`

if [ -x /usr/bin/oneshot ]; then
   su -c "/usr/bin/oneshot --mic"
   su -c "/usr/bin/oneshot --mic" $DEVICEUSER
fi
### end 50_oneshot

### Add system group and add nemo to it
/usr/sbin/groupadd -rf system
/usr/sbin/usermod -a -G system nemo

### Add these users for dbus
/usr/sbin/useradd -r -d / -s /sbin/nologin nfc
/usr/sbin/useradd -r -d / -s /sbin/nologin radio

### begin 70_sdk-domain
export SSU_DOMAIN=@RNDFLAVOUR@

if [ "$SSU_RELEASE_TYPE" = "release" ] && [[ "$SSU_DOMAIN" = "public-sdk" ]];
then
    ssu domain nemomobile
fi
### end 70_sdk-domain
%end

%post --nochroot
export SSU_RELEASE_TYPE=release
### begin 01_release
if [ -n "$IMG_NAME" ]; then
    echo "BUILD: $IMG_NAME" >> $INSTALL_ROOT/etc/meego-release
fi

%end

%pack
export SSU_RELEASE_TYPE=release
%end
