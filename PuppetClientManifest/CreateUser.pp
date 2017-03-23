include stdlib
user { 'bob' :
  ensure     => 'present',
  managehome => true,
  groups     => [ 'root', 'users'],
  password   => pw_hash('Password1','SHA-512','salt'),
}
