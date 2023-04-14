FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:mx8-nxp-bsp = "git://github.com/varigit/imx-atf;protocol=https;branch=${SRCBRANCH} \
           file://0001-Makefile-Suppress-array-bounds-error.patch \
           file://rwx-segments.patch \
"
SRCBRANCH:mx8-nxp-bsp = "lf_v2.6_var01"
SRCREV:mx8-nxp-bsp = "b0039c73c070f0f1a6455c6c0d828310f12f0e8d"

SRC_URI:imx93-var-som = "git://git@github.com/ksloat-varigit-staging/imx-atf;protocol=ssh;branch=${SRCBRANCH}"
SRCBRANCH:imx93-var-som = "lf_v2.6_var03"
SRCREV:imx93-var-som = "f21a37b137fd9e85d03cf44f2c2540356dd52fd9"

EXTRA_OEMAKE:append:imx8mq-var-dart = " \
    BL32_BASE=${TEE_LOAD_ADDR} \
"

EXTRA_OEMAKE:append:imx8mm-var-dart = " \
    BL32_BASE=${TEE_LOAD_ADDR} \
"
