package { 'ntp':
  ensure   => 'installed',#other verbs absent,purged,latest,4.1
  #name    => 'ntp', not used as we make use of title
  #provider => 'yum', #not req
}

service { 'ntpd':
  ensure => 'running', #stopped,
  #name  => 'ntp', userful where service name differs,
  enable => true, #false
}
