if $facts['os']['family'] == 'RedHat'
{
  if defined(File['/var/www/html']) 
  {
    if ! defined(Package['httpd']){
     package { 'httpd':
       ensure => installed,
     }
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
  }
  else
  {
    notify {'Directory not exists': }
  }
}
else
{
  notify {'Not Redhat': }
}
  
