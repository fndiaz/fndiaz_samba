# samba

#### Table of Contents

1. [Overview](#overview)
2. [Setup ](#setup)
3. [Usage ](#usage)
4. [Limitations - OS compatibility](#limitations)

## Overview

This is a simple Puppet module Samba
Made by Fernando Vieira - fndiaz

## Setup

To install the correct Samba package on your system, select the required arguments

## Usage

* Install Samba with default settings

~~~
    class { 'samba': }
~~~

* Instal Samba with services arguments

~~~
    class {'samba':
        ensure => running
        enable => true
    }
~~~

* Instal Samba and define share folder

~~~
    class {'samba':
        share_name => 'Share name',
        share_comment  => 'Folder comment',
        share_path     => '/tmp/teste',
        share_readonly => 'yes',
        share_public   => 'no',
        share_user     => 'admin',
    }
~~~

* Instal Samba with custom file conf (add file in template folder)

~~~
    class {'samba':
        custom_file => true
        file => 'samba/custom_file.conf'
    }
~~~

* Instal Samba and create user

~~~
    class {'samba':
        user_name => 'admin'
        user_password => '123456'
    }
~~~


## Limitations

* Debian 6, 7
* Ubuntu 10.04, 11.04., 12.04, 14.04


