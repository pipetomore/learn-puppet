class base {
  include ssh
  include sudo
}

node 'demo1' {
  include base
}


node 'demo2' {
  include base
  include postfix
  include demo_mysql 
  
  demo_apache::vhost { 'www.example.com':
    port => '80',
    docroot => '/var/www/www.example.com',
    ssl => false,
    priority => '10',
    serveraliases => 'home.example.com', 
  } 
}
