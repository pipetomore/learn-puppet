class puppet::params {
  $puppetserver = hiera('puppetmaster')   
}