class samba::package {

    package { $::samba::package_name:
        ensure => present,
    }
}
