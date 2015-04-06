class fndiaz_samba::service {

    service { $::fndiaz_samba::service_name:
        ensure  => $::fndiaz_samba::ensure,
        enable  => $::fndiaz_samba::enable,
        hasstatus   => true,
        hasrestart => true,
        require => Class[fndiaz_samba::package],
    }

}

