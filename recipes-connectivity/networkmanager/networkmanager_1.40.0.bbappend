# Make a symlink do give NetworkManager an alias so systemd-sysv-generator
# will not create a runtime/late .service file for network-manager
do_install:append() {
    install -d ${D}${systemd_system_unitdir}
    ln -s ./NetworkManager.service ${D}${systemd_system_unitdir}/network-manager.service
}

FILES:${PN}-daemon += "${systemd_system_unitdir}/network-manager.service"
