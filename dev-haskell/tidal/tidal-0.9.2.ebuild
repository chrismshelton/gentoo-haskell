# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Pattern language for improvised music"
HOMEPAGE="http://tidalcycles.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/applicative-numbers:=[profile?]
	dev-haskell/colour:=[profile?]
	dev-haskell/hashable:=[profile?]
	>dev-haskell/hosc-0.13:=[profile?]
	dev-haskell/mersenne-random-pure64:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/text:=[profile?]
	>dev-haskell/websockets-0.8:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
