class accman {
  user { 'wmg':
  ensure => 'present',
  home => '/home/wmg',
  password => 'puppet',
  shell => '/bin/bash',
  groups => 'wmg',
  comment => 'Walter Gildersleeve'
  }
  group { 'wmg':
  ensure => 'present',
  }
}
