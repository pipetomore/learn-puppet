# Class: sudoers
#
# This module manages sudoers
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class sudo {
  
  package {'sudo':
    ensure    =>  present,
  }
  
  if ::osfamily == 'Debian' {
    package {'sudo-ldap':
      ensure  =>  present,
      require => Package['sudo'],
    }
  }
  file { '/etc/sudoers':
    source    =>  'puppet:///modules/sudo/sudoers',
    mode      =>  '0440',
    owner     =>  'root',
    group     =>  'root',
    require => Package['sudo'],
  }

}
