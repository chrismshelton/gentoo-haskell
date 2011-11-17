# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.12

EAPI="2"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="XML parser/formatter based on expat"
HOMEPAGE="http://haskell.org/haskellwiki/Hexpat/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/deepseq-1.3
		=dev-haskell/list-0.4*
		<dev-haskell/text-0.12
		dev-haskell/transformers
		=dev-haskell/utf8-string-0.3*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@deepseq == 1.1.\*@deepseq >= 1.1 \&\& < 1.3@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
