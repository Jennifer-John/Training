file { '/puppet/hello.txt' :
       ensure => present,
       content => 'Jennifer',
       mode => '777'
     }
