class demo_apache::install {
  package { [ 'apache2' ]:
    ensure => present,
  }
} 