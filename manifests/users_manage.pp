class ab_demo::users_manage {
  user { 'sap-hana-user':
    ensure           => 'present',
    comment          => 'For use on machines with SAP HANA',
    groups           => ['sap-hana'],
    home             => '/home/sap-hana',
    password         => '$1$7ssdE1IM$Q7xtFGUS3Ckzvnskx.rU61',
    password_max_age => 99999,
    password_min_age => 0,
    shell            => '/bin/bash',
  }  
  
  file { '/home/sap-hana':
    ensure => 'directory',
    owner  => 'sap-hana-user',
    group  => 'sap-hana',
    mode   => '0700',
  }

  group { 'sap-hana':
    ensure => 'present',
  }
}
