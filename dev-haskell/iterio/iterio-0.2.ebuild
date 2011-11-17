# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

MY_PN="iterIO"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Iteratee-based IO with pipe operators"
HOMEPAGE="http://www.scs.stanford.edu/~dm/iterIO"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/attoparsec-0.9*
		>=dev-haskell/hsopenssl-0.9
		=dev-haskell/listlike-3*
		<dev-haskell/mtl-3
		=dev-haskell/network-2.3*
		<dev-haskell/stringsearch-2
		<dev-haskell/time-2
		>=dev-lang/ghc-7.0.1
		sys-libs/zlib"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"
