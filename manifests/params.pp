class fndiaz_samba::params {

$ensure     =running 
$enable     =true

$share_name     = 'Asterisk'
$share_comment  = 'Pasta Asterisk'
$share_path     = '/tmp/teste'
$share_readonly = 'yes'
$share_public   = 'no'
$share_user     = 'admin' 

$custom_file    = false
$file           = 'fndiaz_samba/custom_file.conf' 
$user_name      = ''
$user_password  = ''


    case $::osfamily {
        Debian: {
            $package_name   = 'samba'
            $service_name   = 'samba'
            $file_conf      = '/etc/samba/smb.conf'
            $template       = 'fndiaz_samba/smb_debian.conf.erb'
        }
        RedHat: {
            $package_name   = ''
            $service_name   = ''
        }
        default: {
            fail("Modulo fndiaz_zabbixagent nao suportado pelo sistema: ${::osfamily}")
        }
    }

}
