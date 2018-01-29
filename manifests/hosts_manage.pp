class ab_demo::hosts_manage {
  file { '/etc/hosts':
    ensure => 'file',
    source => 'puppet:///modules/ab_demo/hosts.txt',
    owner => 'root',
    group => 'root',
    mode => '644',
  }
}
