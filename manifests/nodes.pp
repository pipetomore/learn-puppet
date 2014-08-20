#Test Nodes 2
include ssh
include sudoers

node 'demo1' {
  include nginx
}

#Node 2 is used for tesing modules and resource declarations - these are examples that should be put into modules and 
#not called directly
node 'demo2' {
  file { ["/var","/var/www"]:
    ensure  =>  directory,
  }
  nginx::website {'wakkawakka':
    site_domain =>  'wakkawakka.local',
  }
  nginx::website {'testsite':
    site_domain =>  'testsite.local',
  }
  class { 'ntp':
    server1  => '0.0.0.0',
    server2 =>  '0.0.0.0',
  }  
}




#####NOTES
# exec {'my command':
#    command =>  '/bin/echo I ran this command on `/bin/date` > /tmp/command.output.txt',
#  }
#  
#  cron {'Backup testsite':
#    command => '/usr/bin/rsync -az /var/www/testsite /testsite-backup',
#    hour  => '04',
#    minute  => '00',
#    require => File['/testsite-backup'],
#  }
#  
#  file {'/testsite-backup':
#    ensure  => directory,
#  }