# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="PureScript Programming Language Compiler"
HOMEPAGE="http://www.purescript.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.8:=[profile?] <dev-haskell/aeson-0.10:=[profile?]
	>=dev-haskell/aeson-better-errors-0.8:=[profile?]
	dev-haskell/ansi-wl-pprint:=[profile?]
	>=dev-haskell/bower-json-0.7:=[profile?]
	>=dev-haskell/boxes-0.1.4:=[profile?] <dev-haskell/boxes-0.2.0:=[profile?]
	dev-haskell/dlist:=[profile?]
	>=dev-haskell/glob-0.7:=[profile?] <dev-haskell/glob-0.8:=[profile?]
	>=dev-haskell/haskeline-0.7.0.0:=[profile?]
	>=dev-haskell/language-javascript-0.5:=[profile?] <dev-haskell/language-javascript-0.6:=[profile?]
	>=dev-haskell/mtl-2.1.0:=[profile?] <dev-haskell/mtl-2.3.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.10.0:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-haskell/pattern-arrows-0.0.2:=[profile?] <dev-haskell/pattern-arrows-0.1:=[profile?]
	>=dev-haskell/safe-0.3.9:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/semigroups-0.16.2:=[profile?] <dev-haskell/semigroups-0.17:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/transformers-0.3.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.3.0:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/utf8-string-1:=[profile?] <dev-haskell/utf8-string-2:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hunit )
"