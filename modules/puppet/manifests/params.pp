class puppet::params {
  $puppetserver = hiera('puppetmaster')
  notice("Puppet Master is set to ${puppetserver}")   
}