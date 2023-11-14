# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Bitwarden password manager CLI client"
HOMEPAGE="https://bitwarden.com/"
SRC_URI="https://github.com/bitwarden/clients/releases/download/cli-v${PV}/bw-linux-${PV}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="strip"

BDEPEND="app-arch/unzip"

S="${WORKDIR}"

QA_PREBUILT="usr/bin/bw"

src_install() {
	dobin bw
}
