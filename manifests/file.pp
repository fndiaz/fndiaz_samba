class samba::file {

if $samba::custom_file == true{
    #notify { "template samba: $samba::custom_file": }
    file { $samba::file_conf:
        owner   => 'root',
        group   => 'root',
        mode    => '644',
        content => template($::samba::file),
        require => Class[samba::package],
        notify => Class[samba::service],
    }
}
else{
    #notify { "template samba: $samba::template": }
    file { $samba::file_conf:
        owner   => 'root',
        group   => 'root',
        mode    => '644',
        content => template($::samba::template),
        require => Class[samba::package],
        notify => Class[samba::service],

    }
}
} 
