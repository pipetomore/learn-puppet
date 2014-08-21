class ssh::package {
  include ssh::params
  package { 'ssh':
    ensure =>  present,
    name   =>  $::ssh::params::ssh_package_name, 
  }
}

