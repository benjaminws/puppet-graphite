class graphite::carbon::service {



  service { 'carbon':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }


}


