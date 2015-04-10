class samba::user {

    user { $samba::user_name:
        ensure           => 'present',
        comment          => 'usuario samba',
        password         => generate('/bin/sh', '-c', "mkpasswd -m sha-512 ${samba::user_password} | tr -d '\n'"),
        password_max_age => '99999',
        password_min_age => '0',
        shell            => '/bin/bash',
        require => Class[samba::package],
    }

    exec { 'smbpasswd':
                path => "/usr/bin:/usr/sbin:/bin",
                command => "/bin/echo -e '$samba::user_password\n$samba::user_password' | /usr/bin/smbpasswd -s -a $samba::user_name",
                require => User[$samba::user_name],

        }

}
