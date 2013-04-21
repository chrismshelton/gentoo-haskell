# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to ZeroMQ 3.x"
HOMEPAGE="http://github.com/twittner/zeromq-haskell/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/monadcatchio-transformers:=[profile?]
		dev-haskell/transformers:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		net-libs/zeromq"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/ansi-terminal-0.6
			>=dev-haskell/checkers-0.3
			>=dev-haskell/quickcheck-2.6
		)"
