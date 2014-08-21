class postfix::package {
  package {["postfix", "mailutils"]:
    ensure  => present,
  }
}