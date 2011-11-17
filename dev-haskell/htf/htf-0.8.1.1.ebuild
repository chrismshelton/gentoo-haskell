# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit base haskell-cabal

MY_PN="HTF"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="The Haskell Test Framework"
HOMEPAGE="http://hackage.haskell.org/package/htf"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cpphs-1.12
		>=dev-haskell/diff-0.1.3 <dev-haskell/diff-0.2
		=dev-haskell/haskell-src-exts-1.11*
		=dev-haskell/hunit-1.2*
		>=dev-haskell/mtl-1.1 <dev-haskell/mtl-2.1
		>=dev-haskell/quickcheck-2.3 <dev-haskell/quickcheck-2.5
		>=dev-haskell/regex-compat-0.92 <dev-haskell/regex-compat-0.96
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}/${PN}"-0.8.1.0-qc-2.4.patch)
