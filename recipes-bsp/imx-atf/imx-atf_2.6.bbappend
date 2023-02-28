FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:mx8-nxp-bsp = "git://github.com/FrancescoFerraro/imx-atf;protocol=https;branch=${SRCBRANCH} \
           file://0001-Makefile-Suppress-array-bounds-error.patch \
           file://rwx-segments.patch \
"
SRCBRANCH:mx8-nxp-bsp = "lf_v2.6_var02"
SRCREV:mx8-nxp-bsp = "3ba4f054ee1cf65a00d28ba84b2c5b0aa7375556"

EXTRA_OEMAKE:append:imx8mq-var-dart = " \
    BL32_BASE=${TEE_LOAD_ADDR} \
"

EXTRA_OEMAKE:append:imx8mm-var-dart = " \
    BL32_BASE=${TEE_LOAD_ADDR} \
"
