class demo_mysql::config (
  $user,
  $group,
){
  file { '/etc/mysql/my.cnf':
    ensure => present,
    source => 'puppet:///modules/mysql/my.cnf',
    owner => $user,
    group => $group,
    require => Class['mysql::install'],
    notify => Class['mysql::service'],
  }
  file { '/var/lib/mysql':
    group => $user,
    owner => $group,
    recurse => true,
    require => File['/etc/mysql/my.cnf'],
  }
} 