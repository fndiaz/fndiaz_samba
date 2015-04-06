class fndiaz_samba::file {

if $fndiaz_samba::custom_file == true{
    notify { "template samba: $fndiaz_samba::custom_file": }
    file { $fndiaz_samba::file_conf:
        owner   => 'root',
        group   => 'root',
        mode    => '644',
        content => template($::fndiaz_samba::file),
        require => Class[fndiaz_samba::package],
        notify => Class[fndiaz_samba::service],
    }
}
else{
    notify { "template samba: $fndiaz_samba::template": }
    file { $fndiaz_samba::file_conf:
        owner   => 'root',
        group   => 'root',
        mode    => '644',
        content => template($::fndiaz_samba::template),
        require => Class[fndiaz_samba::package],
        notify => Class[fndiaz_samba::service],

    }
}
} 
