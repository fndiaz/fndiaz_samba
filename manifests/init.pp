# == Class: init samba
#
# Módulo Samba
#
class samba (

$ensure         = $samba::params::ensure,
$enable         = $samba::params::enable,
$file_conf      = $samba::params::file_conf,
$share_name     = $samba::params::share_name,
$share_comment  = $samba::params::share_comment,
$share_path     = $samba::params::share_path,
$share_readonly = $samba::params::share_readonly,
$share_public   = $samba::params::share_public,
$share_user     = $samba::params::share_user,
$user_name      = $samba::params::user_name,
$user_password  = $samba::params::user_password,
$package_name   = $samba::params::package_name,
$service_name   = $samba::params::service_name,
$template       = $samba::params::template,
$custom_file    = $samba::params::custom_file,
$file           = $samba::params::file

)inherits samba::params
{


include samba::package
include samba::service
include samba::file

if $user_name != ''{
    notify { "user samba: $user_name": }
    include samba::user
}

#$password = 'your_plain_text_password'
#user { 'root':
#    ensure   => 'present',
#    password => generate('/bin/sh', '-c', "mkpasswd -m sha-512 ${password} | tr -d '\n'"),
#}

}
