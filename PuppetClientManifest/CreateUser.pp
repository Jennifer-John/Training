include stdlib
$admingroups = ['wheel','admin']
notify {"the first group is ${admingroups[0]}": }

$user = { 'username' => 'bob', 'userid' => '2011', }
notify{"The user's name is ${user['username']}": }

user { 'bob' :
  ensure     => 'present',
  managehome => true,
  groups     => [ 'root', 'users'],
  password   => pw_hash('Password1','SHA-512','salt'),
}
