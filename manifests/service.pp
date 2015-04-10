class samba::service {

    service { $::samba::service_name:
        ensure  => $::samba::ensure,
        enable  => $::samba::enable,
        hasstatus   => true,
        hasrestart => true,
        require => Class[samba::package],
    }

}

