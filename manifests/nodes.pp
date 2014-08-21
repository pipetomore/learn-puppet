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
}
