# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Fast conversion between double precision floating point and text"
HOMEPAGE="https://github.com/mailrank/double-conversion"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/text-0.11.0.8
		>=dev-lang/ghc-6.10.1
		sys-devel/gcc"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
