class demo_mysql::service (
  $enabled,
  $ensure,
){
  service { 'mysql':
    ensure => $ensure,
    hasstatus => true,
    hasrestart => true,
    enable => $enabled,
    require => Class['demo_mysql::config'],
  }
} 