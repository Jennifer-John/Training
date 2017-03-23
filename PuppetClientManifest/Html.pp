package { 'httpd':
  ensure => installed,
}

service { 'httpd':
  ensure  => 'running',
  enable => 'true',
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => '<h1>Hello to the world of Puppet</h1>',
  mode    => '777',
}
  
