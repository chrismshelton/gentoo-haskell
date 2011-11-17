# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Encapsulate multiple web encoding in a single package."
HOMEPAGE="http://github.com/snoyberg/web-encodings/tree/master"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/failure-0.2
		=dev-haskell/text-0.11*
		<dev-haskell/time-1.4
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
