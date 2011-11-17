# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:	$

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="WAI application for static serving"
HOMEPAGE="http://www.yesodweb.com/book/wai"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="=dev-haskell/base64-bytestring-0.1*
		<dev-haskell/blaze-builder-0.4
		=dev-haskell/blaze-html-0.4*
		=dev-haskell/cryptohash-0.7*
		=dev-haskell/file-embed-0.0*
		dev-haskell/http-date
		=dev-haskell/http-types-0.6*
		<dev-haskell/text-1.0
		<dev-haskell/time-1.4
		<dev-haskell/transformers-0.3
		<dev-haskell/unix-compat-0.4
		=dev-haskell/wai-0.4*
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/hspec-0.8
				dev-haskell/hunit
				dev-haskell/wai-test
		)"

src_prepare() {
	epatch "${FILESDIR}/${P}-test.patch"

	sed -e 's@unix-compat               >= 0.2      && < 0.3@unix-compat               >= 0.2      \&\& < 0.4@g' \
		-e 's@hspec >= 0.8 && < 0.9@hspec >= 0.8 \&\& < 0.10@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
