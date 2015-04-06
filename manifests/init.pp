# == Class: fndiaz_samba
#
# Módulo Samba
#
class fndiaz_samba (

$ensure         = $fndiaz_samba::params::ensure,
$enable         = $fndiaz_samba::params::enable,
$file_conf      = $fndiaz_samba::params::file_conf,
$share_name     = $fndiaz_samba::params::share_name,
$share_comment  = $fndiaz_samba::params::share_comment,
$share_path      = $fndiaz_samba::params::share_path,
$share_readonly = $fndiaz_samba::params::share_readonly,
$share_public   = $fndiaz_samba::params::share_public,
$share_user     = $fndiaz_samba::params::share_user,
$user_name      = $fndiaz_samba::params::user_name,
$user_password  = $fndiaz_samba::params::user_password,
$package_name   = $fndiaz_samba::params::package_name,
$service_name   = $fndiaz_samba::params::service_name,
$template       = $fndiaz_samba::params::template,
$custom_file    = $fndiaz_samba::params::custom_file,
$file           = $fndiaz_samba::params::file

)inherits fndiaz_samba::params
{


include fndiaz_samba::package
include fndiaz_samba::service
include fndiaz_samba::file

if $user_name != ''{
    notify { "user samba: $user_name": }
    include fndiaz_samba::user
}

#$password = 'your_plain_text_password'
#user { 'root':
#    ensure   => 'present',
#    password => generate('/bin/sh', '-c', "mkpasswd -m sha-512 ${password} | tr -d '\n'"),
#}

}
