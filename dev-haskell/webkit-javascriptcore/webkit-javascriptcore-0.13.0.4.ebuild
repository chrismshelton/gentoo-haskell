# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="JavaScriptCore FFI from webkitgtk"
HOMEPAGE="http://hackage.haskell.org/package/webkit-javascriptcore"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/glib-0.13.0.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/gtk-0.13.0.0:2=[profile?] <dev-haskell/gtk-0.14:2=[profile?]
	>=dev-haskell/webkit-0.13.0.0:2=[profile?] <dev-haskell/webkit-0.14:2=[profile?]
	>=dev-lang/ghc-7.4.1:=
	net-libs/webkit-gtk:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	dev-haskell/gtk2hs-buildtools
	virtual/pkgconfig
"

src_configure() {
	haskell-cabal_src_configure \
		--constraint="Cabal == $(cabal-version)"
}