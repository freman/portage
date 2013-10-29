# Distributed under the terms of the GNU General Public License v2

EAPI=4

PHP_EXT_NAME="zmq"
PHP_EXT_PECL_PKG="zmq"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"
DOCS="LICENSE README.md"

PHP_EXT_INIFILE="${PN}.ini"

USE_PHP="php5-3 php5-4"

inherit php-ext-pecl-r2 confutils eutils

KEYWORDS="~amd64 ~mips ~ppc ~ppc64 ~x86"

DESCRIPTION="PHP extension for the 0MQ software library to quickly design and implement fast message-based application."
LICENSE="LGPL-3"
SLOT="0"
IUSE=""

DEPEND=">=net-libs/zeromq-2.0.7"
RDEPEND="${DEPEND}"
