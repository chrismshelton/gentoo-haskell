# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Generic HTTP types for Haskell (for both client and server code)."
HOMEPAGE="https://github.com/aristidb/http-types"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/blaze-builder-0.4
		=dev-haskell/case-insensitive-0.4*
		=dev-haskell/text-0.11*
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	sed -e 's@case-insensitive >=0.2 && <0.4@case-insensitive >=0.2 \&\& <0.5@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
