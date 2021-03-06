# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Launch a web app in the default browser"
HOMEPAGE="http://hackage.haskell.org/package/wai-handler-launch"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/async:=[profile?]
	>=dev-haskell/blaze-builder-0.2.1.4:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	dev-haskell/streaming-commons:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/warp-3.0:=[profile?] <dev-haskell/warp-3.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
