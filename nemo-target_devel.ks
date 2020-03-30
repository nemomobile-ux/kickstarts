# DisplayName: GlacierUX/@ARCH@ (release) @RELEASE@
# KickstartType: release
# SuggestedImageType: fs
# SuggestedArchitecture: @ARCH@

lang en_US.UTF-8
keyboard us
user --name nemo --groups audio,video --password nemo
timezone --utc UTC

### Commands from /tmp/sandbox/usr/share/ssu/kickstart/part/default
part / --size 500 --ondisk sda --fstype=ext4

## No suitable configuration found in /tmp/sandbox/usr/share/ssu/kickstart/bootloader

repo --name=mer-core --baseurl=http://repo.merproject.org/obs/home:/neochapay:/mer:/core/latest_@ARCH@
repo --name=mer-mw --baseurl=http://repo.merproject.org/obs/home:/neochapay:/mer:/mw/latest_@ARCH@
repo --name=mer-qt --baseurl=http://repo.merproject.org/obs/home:/neochapay:/mer:/qt/latest_@ARCH@

%packages
PackageKit
PackageKit-Qt5
PackageKit-glib
PackageKit-zypp
alsa-lib
augeas-libs
basesystem
binutils
boost-filesystem
boost-system
busybox
busybox-symlinks-dhcp
busybox-symlinks-gzip
bzip2
bzip2-libs
ca-certificates
cairo
connman
connman-configs-mer
connman-qt5
cor
coreutils
cpio
curl
db4
db4-utils
dbus
dbus-devel
dbus-glib
dbus-libs
dbusextended-qt5
dconf
desktop-file-utils
device-mapper
device-mapper-event
device-mapper-event-libs
device-mapper-libs
diffutils
dsme
elfutils
elfutils-libelf
elfutils-libs
exempi
expat
expat-devel
file
file-libs
findutils
flac
fontconfig
fontconfig-devel
fontpackages-filesystem
freetype
freetype-devel
fuse
fuse-libs
gawk
gdbm
giflib
glib-networking
glib2
glibc-common
glibc-devel
glibc-headers
gmime
gnupg2
gnutls
grep
groff
gstreamer1.0
gstreamer1.0-plugins-base
gstreamer1.0-plugins-good
info
iptables
kernel-headers
kmod-libs
libaccounts-glib
libaccounts-qt5
libacl
libasyncns
libattr
libav
libblkid
libcanberra
libcap
libcontentaction-qt5
libcurl
libdbus-qeventloop-qt5
libdbusaccess
libdbuslogserver-dbus
libdrm
libdsme
libexif
libfdisk
libffi
libgcc
libgcrypt
libglibutil
libgofono
libgofonoext
libgpg-error
libgrilio
libgsf
libgsupplicant
libicu52
libiodata-qt5
libiphb
libiptcdata
libjpeg-turbo
libkeepalive
libkf5archive
libksba
liblua
libmce-glib
libmlocale-qt5
libmount
libnemotransferengine-qt5
libngf
libngf-qt5
libngf-qt5-declarative
libnl
libogg
libpng
libqmfclient1-qt5
libqmfmessageserver1-qt5
libqtaround2
libquillmetadata-qt5
libresource
libresourceqt-qt5
libsailfishkeyprovider
libsbc
libshadowutils
libsignon-qt5
libsmartcols
libsndfile
libsolv-tools
libsolv0
libsoup
libstdc++
libtasn1
libtheora
libtiff
libtool-ltdl
libusb
libusb-moded-qt5
libuser
libutempter
libuuid
libvorbis
libwebp
libwspcodec
libxkbcommon
libxml2
libxslt
libzypp
lsof
lvm2
lvm2-libs
mapplauncherd
mapplauncherd-qt5
mapplauncherd-qt5-devel
mce
meego-rpm-config
mesa-libEGL
mesa-libEGL-devel
mesa-libGLESv2
mesa-libGLESv2-devel
mesa-libglapi
mlite-qt5
mlite-qt5-devel
mobile-broadband-provider-info
mpris-qt5
mpris-qt5-qml-plugin
mtdev
ncurses
ncurses-base
ncurses-libs
nemo-gstreamer1.0-interfaces
nemo-qml-plugin-configuration-qt5
nemo-qml-plugin-contentaction
nemo-qml-plugin-dbus-qt5
nemo-qml-plugin-filemanager
nemo-qml-plugin-models-qt5
nemo-qml-plugin-notifications-qt5
nemo-qml-plugin-systemsettings
nemo-qml-plugin-thumbnailer-qt5
nemo-transferengine-qt5
ngfd
nspr
nss
nss-softokn-freebl
nss-sysinit
ofono
ofono-configs-mer
openssl-libs
opus
orc
p11-kit
p11-kit-nss-ckbi
p11-kit-trust
pacrunner
pam
passwd
patch
pcre
perl
perl-Filter
perl-Module-Pluggable
perl-Pod-Escapes
perl-Pod-Parser
perl-Pod-Perldoc
perl-Pod-Simple
perl-Scalar-List-Utils
perl-Socket
perl-libs
perl-macros
perl-parent
perl-threads
perl-threads-shared
pixman
pkgconfig
polkit
poppler
poppler-glib
popt
procps
profiled
psmisc
pth
pulseaudio
pyotherside-qml-plugin-python3-qt5
python3-base
qmf-qt5-devel
qml-rpm-macros
qt5-default
qt5-plugin-bearer-generic
qt5-plugin-imageformat-jpeg
qt5-plugin-platform-minimal
qt5-plugin-sqldriver-sqlite
qt5-qmake
qt5-qtconcurrent
qt5-qtconcurrent-devel
qt5-qtcore
qt5-qtcore-devel
qt5-qtdbus
qt5-qtdbus-devel
qt5-qtdeclarative
qt5-qtdeclarative-devel
qt5-qtdeclarative-import-folderlistmodel
qt5-qtdeclarative-import-localstorageplugin
qt5-qtdeclarative-import-location
qt5-qtdeclarative-import-models2
qt5-qtdeclarative-import-particles2
qt5-qtdeclarative-import-positioning
qt5-qtdeclarative-import-qtquick2plugin
qt5-qtdeclarative-import-qttest
qt5-qtdeclarative-import-sensors
qt5-qtdeclarative-import-window2
qt5-qtdeclarative-plugin-qmlinspector
qt5-qtdeclarative-publishsubscribe
qt5-qtdeclarative-qtquick
qt5-qtdeclarative-qtquick-devel
qt5-qtdeclarative-qtquickparticles
qt5-qtdeclarative-qtquickparticles-devel
qt5-qtdeclarative-qtquicktest
qt5-qtdeclarative-serviceframework
qt5-qtdeclarative-systeminfo
qt5-qtfeedback
qt5-qtfeedback-devel
qt5-qtgraphicaleffects
qt5-qtgui
qt5-qtgui-devel
qt5-qtlocation
qt5-qtlocation-devel
qt5-qtnetwork
qt5-qtnetwork-devel
qt5-qtopengl
qt5-qtopengl-devel
qt5-qtpositioning
qt5-qtpositioning-devel
qt5-qtprintsupport
qt5-qtpublishsubscribe
qt5-qtpublishsubscribe-devel
qt5-qtquickcontrols-layouts
qt5-qtsensors
qt5-qtsensors-devel
qt5-qtserviceframework
qt5-qtserviceframework-devel
qt5-qtsql
qt5-qtsql-devel
qt5-qtsvg
qt5-qtsvg-devel
qt5-qtsysteminfo
qt5-qttest
qt5-qttools
qt5-qttools-linguist
qt5-qtwayland-wayland_egl
qt5-qtwayland-wayland_egl-devel
qt5-qtwidgets
qt5-qtwidgets-devel
qt5-qtxml
qt5-qtxml-devel
qt5-qtxmlpatterns
qt5-qtxmlpatterns-devel
qt5-tools
qtchooser
readline
rpm-build
rpm-libs
sed
setup
shadow-utils
shared-mime-info
signon-plugin-oauth2-qt5
signon-qt5
sound-theme-freedesktop
speex
sqlite
ssu
ssu-network-proxy-plugin
ssu-sysinfo
systemd-libs
systemd-user-session-targets
taglib
timed-qt5
totem-pl-parser
tzdata
tzdata-timed
unzip
usb-moded
usb-moded-defaults
usb-moded-developer-mode
util-linux
wayland
wayland-egl
wpa_supplicant
xdg-utils
xkeyboard-config
xz
xz-libs
xz-lzma-compat
zlib
zlib-devel
zypper
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
echo -n "@ARCH@-meego-linux" > /etc/rpm/platform

# Also libzypp has problems in autodetecting the architecture so we force tha as well.
# https://bugs.meego.com/show_bug.cgi?id=11484
echo "arch = @ARCH@" >> /etc/zypp/zypp.conf

#add repos
zypper ar -G http://repo.merproject.org/obs/home:/neochapay:/mer:/core/latest_@ARCH@ mer-core
zypper ar -G http://repo.merproject.org/obs/home:/neochapay:/mer:/mw/latest_@ARCH@ mer-mw
zypper ar -G http://repo.merproject.org/obs/home:/neochapay:/mer:/qt/latest_@ARCH@ mer-qt
zypper ar -G http://repo.merproject.org/obs/home:/neochapay:/mer:/ux/latest_@ARCH@ nemo-ux

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

### begin 60_sdk-domain

export SSU_DOMAIN=@RNDFLAVOUR@

if [ "$SSU_RELEASE_TYPE" = "release" ] && [[ "$SSU_DOMAIN" = "public-sdk" ]];
then
    ssu domain nemomobile
fi
### end 60_sdk-domain
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
