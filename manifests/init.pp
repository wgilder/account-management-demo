class accman {
  user { 'wmg':
    ensure           => 'present',
    comment          => 'Walter Gildersleeve',
    gid              => 1002,
    groups           => ['wmg'],
    home             => '/home/wmg',
    password         => '$1$7ssdE1IM$Q7xtFGUS3Ckzvnskx.rU61',
    password_max_age => 99999,
    password_min_age => 0,
    shell            => '/bin/bash',
    uid              => 1011,
  }  
  
  file { '/home/wmg':
    ensure => 'directory',
    owner  => 'wmg',
    group  => 'wmg',
    mode   => '0700',
  }

  group { 'wmg':
    ensure => 'present',
  }
}

class accman::clean {
  user { 'wmg':
    ensure => 'absent',
  }
  group { 'wmg': 
    ensure => 'absent',
  }
  file { '/home/wmg':
    ensure => 'absent',
  }
}
