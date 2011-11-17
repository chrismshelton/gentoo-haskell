# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI="3"

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hscolour hoogle nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the VTE library."
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/glib-0.12*
		=dev-haskell/gtk-0.12*
		=dev-haskell/pango-0.12*
		>=dev-lang/ghc-6.10.1
		>=x11-libs/vte-0.20.5"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		dev-haskell/gtk2hs-buildtools"
