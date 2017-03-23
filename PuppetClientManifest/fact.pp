if $facts['os']['family'] == 'redHat1' {
  notify { 'Redhat': }
}
elsif $facts['os']['family'] == 'ubuntu' {
  notify { 'Ubuntu': }
}
else{
  fail ("your OS , ${facts['os']['family']}, is untested")
}
