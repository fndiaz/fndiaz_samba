class fndiaz_samba::package {

    package { $::fndiaz_samba::package_name:
        ensure => present,
    }
}
