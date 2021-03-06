# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A mustache template parser library"
HOMEPAGE="https://github.com/JustusAdam/mustache"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tries to access network

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/cmdargs:=[profile?]
	dev-haskell/either:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/th-lift:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/base-unicode-symbols
		dev-haskell/hspec
		dev-haskell/lens
		dev-haskell/tar
		dev-haskell/temporary
		dev-haskell/wreq
		dev-haskell/zlib )
"
