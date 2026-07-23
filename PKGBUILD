# Contributor: Luxzi <luxzi@pm.me>
# Contributor: h8d13 <hadean-eon-dev@proton.me>

pkgname=ragnarwm
_pkgname="ragnar"
pkgver='1.3'
pkgrel=4
pkgdesc="Minimal, flexible & user-friendly X tiling window manager"
arch=('x86_64')
url="https://github.com/h8d13/ragnar"
license=('GPL')
groups=()
depends=(
  'xcb-util'
  'xcb-proto'
  'xcb-util-keysyms'
  'xcb-util-cursor'
  'xcb-util-wm'
  'libconfig'
  'xorg-server'
  'xorg-xinit'
  'mesa'
)
makedepends=('git' 'make' 'gcc')
optdepends=(
  'xorg-server-xephyr: nested test session via ragnarstart'
  'alacritty: default terminal keybind'
)
provides=('ragnarwm')
options=('!debug')
source=("${_pkgname}::git+${url}.git")
sha256sums=('SKIP')

pkgver() {
    cd $_pkgname
    echo $pkgver
}

build() {
    cd $_pkgname
    # mirrors what happens with install.sh
    cd api && make || exit 1
    cd .. || exit 1 && make
}

package() {
    cd $_pkgname
    install -Dm755 bin/ragnar "$pkgdir/usr/bin/ragnar"
    install -Dm644 ragnar.desktop "$pkgdir/usr/share/xsessions/ragnar.desktop"
    install -Dm644 cfg/ragnar.cfg "$pkgdir/etc/ragnarwm/ragnar.cfg"
}
