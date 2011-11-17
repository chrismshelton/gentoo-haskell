# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="A simple terminal access library"
HOMEPAGE="https://github.com/coreyoconnor/vty"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/deepseq-1.3
		<dev-haskell/mtl-2.1
		>=dev-haskell/parallel-2.2 <dev-haskell/parallel-3.3
		<dev-haskell/parsec-4
		=dev-haskell/terminfo-0.3*
		=dev-haskell/utf8-string-0.3*
		>=dev-haskell/vector-0.7
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0"

src_prepare() {
	sed	-e 's@deepseq >= 1.1 && < 1.2@deepseq >= 1.1 \&\& < 1.3@' \
		-e 's@parallel >= 2.2 && < 3.2@parallel >= 2.2 \&\& < 3.3@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
	if has_version "<dev-haskell/mtl-1.1.1.0"; then
		sed -e 's@mtl >= 1.1.1.0 && < 2.1@mtl >= 1.1.0.2 \&\& < 2.1@' \
			-i "${S}/${PN}.cabal" || die "Could not loosen mtl dependency to allow mtl-1.1.0.2 for HP-2010-02"
	fi
}
