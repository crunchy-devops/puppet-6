group { 'examplegroup':
  ensure => absent,
  require => User['alice'],
}
user { 'alice':
  ensure => absent,
}