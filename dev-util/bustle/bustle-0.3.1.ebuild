# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.14

EAPI="3"

CABAL_FEATURES="bin"
inherit haskell-cabal toolchain-funcs

DESCRIPTION="Draw pretty sequence diagrams of D-Bus traffic"
HOMEPAGE="http://hackage.haskell.org/package/bustle"
SRC_URI="http://willthompson.co.uk/${PN}/releases/${P}.tar.gz"

LICENSE="LGPL-2 GPL-2" # bustle-dbus-monitor.c is GPL-2, rest is LGPL-2
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="net-libs/libpcap
		sys-apps/dbus
		x11-libs/cairo
		x11-libs/pango
		gnome-base/libglade:2.0"
DEPEND="${RDEPEND}
		dev-haskell/binary
		>=dev-haskell/cabal-1.6
		dev-haskell/cairo
		=dev-haskell/dbus-core-0.9*
		dev-haskell/glade
		dev-haskell/glib
		>dev-haskell/gtk-0.11
		dev-haskell/mtl
		dev-haskell/pango
		dev-haskell/parsec
		dev-haskell/pcap
		dev-haskell/text
		>=dev-lang/ghc-6.10.1"

src_compile() {
	# compile haskell part
	cabal_src_compile || die "could not build haskell parts"

	# compile C part
	emake \
		"CC=$(tc-getCC)" \
		"CFLAGS=${CFLAGS}" \
		"CPPFLAGS=${CPPFLAGS}" \
		"LDFLAGS=${LDFLAGS}" \
	    || die "building C part failed"
}

src_install() {
	# install haskell part
	cabal_src_install || die "could not install haskell parts"

	# install C part
	for bin in bustle-dbus-monitor bustle-pcap
	do
		dobin "${S}"/dist/build/"$bin" || die "could not install '$bin'"
	done

	dodoc README HACKING NEWS
}
