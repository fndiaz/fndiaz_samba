class fndiaz_samba::user {

    user { $fndiaz_samba::user_name:
        ensure           => 'present',
        comment          => 'usuario samba',
        password         => generate('/bin/sh', '-c', "mkpasswd -m sha-512 ${fndiaz_samba::user_password} | tr -d '\n'"),
        password_max_age => '99999',
        password_min_age => '0',
        shell            => '/bin/bash',
        require => Class[fndiaz_samba::package],
    }

    exec { 'smbpasswd':
                path => "/usr/bin:/usr/sbin:/bin",
                command => "/bin/echo -e '$fndiaz_samba::user_password\n$fndiaz_samba::user_password' | /usr/bin/smbpasswd -s -a $fndiaz_samba::user_name",
                require => User[$fndiaz_samba::user_name],

        }

}
