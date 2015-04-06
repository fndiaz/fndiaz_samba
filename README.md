# fndiaz_samba

#### Table of Contents

1. [Overview](#overview)
2. [Setup ](#setup)
3. [Usage ](#usage)
4. [Limitations - OS compatibility](#limitations)

## Overview

This is a simple Puppet module Samba
Made by Fernando Vieira - fndiaz

## Setup

To install the correct Samba package on your system, include the 'fndiaz_samba : include fndiaz_samba

## Usage

* Install Zabbix Agent with default settings

~~~
    class { 'fndiaz_samba': }
~~~

* Instal Zabbix Agent with some arguments

~~~
    class {'fndiaz_samba':
        share_name => 'Share name',
        share_comment  => 'Folder comment',
        share_path     => '/tmp/teste',
        share_readonly => 'yes',
        share_public   => 'no',
        share_user     => 'admin',
    }
~~~

## Limitations

* Debian 6, 7
* Ubuntu 10.04, 12.04, 14.04


