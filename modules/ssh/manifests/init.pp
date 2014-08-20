# Class: ssh
#
# This module manages ssh
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class ssh {
    service { 'ssh':
      ensure    =>  running,
    }
    
    file { '/etc/ssh/sshd_config':
      source    =>  'puppet:///modules/ssh/sshd_config',
      notify    =>  Service['ssh'],
      owner     =>  'root',
      group     =>  'root',
    }

}
