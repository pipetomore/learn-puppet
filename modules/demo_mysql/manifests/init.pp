# Class: demo_mysql
#
# This module manages demo_mysql
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#

class demo_mysql (
  $group            =  'mysql',
  $service_enabled  =  true,
  $service_running  =  true,
  $user             =  'mysql'
){
  class { 'demo_mysql::install':
    user     =>  $user,
    group    =>  $group,
  }
  class { 'demo_mysql::config':
    user     =>  $user,
    group    =>  $group,
  }
  class { 'demo_mysql::service':
    ensure   =>  $service_running,
    enabled  =>  $service_enabled,
  }
}
