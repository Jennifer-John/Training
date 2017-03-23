$ntp_service = "ntpd"

package { 'ntp':
  ensure   => 'installed',#other verbs absent,purged,latest,4.1
  #name    => 'ntp', not used as we make use of title
  #provider => 'yum', #not req
}

service { 'Ntp_service':
  ensure => 'running', #stopped,
  #name  => 'ntp', userful where service name differs,
  enable => true, #false
  name   => $ntp_service,
}

notify {"The ${ntp_service} is up and running": }
