define demo_apache::vhost(
  $docroot,
  $port,
  $priority,
  $ssl=true,
  $serveraliases = '',
  $template='demo_apache/vhost.conf.erb',
){
  include demo_apache
  file {"/etc/apache2/sites-enabled/${priority}-${name}":
    content => template($template),
    owner => 'root',
    group => 'root',
    mode => '0640',
    require => Class['demo_apache::install'],
    notify => Class['demo_apache::service'],
  }
} 