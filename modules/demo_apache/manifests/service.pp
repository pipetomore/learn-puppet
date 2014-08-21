class demo_apache::service {
  service { "apache2":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class['demo_apache::install'],
  }
} 