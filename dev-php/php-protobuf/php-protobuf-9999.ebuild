# Distributed under the terms of the GNU General Public License v2

EAPI=4

PHP_EXT_NAME="protobuf"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"
DOCS="LICENSE.md CREDITS README.md"

EGIT_REPO_URI=https://github.com/allegro/php-protobuf.git

PHP_EXT_INIFILE="${PN}.ini"
S="${WORKDIR}/${PN}"

USE_PHP="php5-3 php5-4"

inherit git-2 php-ext-base-r1 php-ext-source-r2 confutils eutils

KEYWORDS="~amd64 ~mips ~ppc ~ppc64 ~x86"

DESCRIPTION="PHP extension for the 0MQ software library to quickly design and implement fast message-based application."
LICENSE="LGPL-3"
SLOT="0"
IUSE=""

DEPEND=">=dev-libs/protobuf-2.4.1"
RDEPEND="${DEPEND}"

src_unpack() {
	echo "Running git-2_src_unpack"
	git-2_src_unpack

	cd $S
	pwd

	echo "Running php-ext-source-r2_phpize"
	phpize
}