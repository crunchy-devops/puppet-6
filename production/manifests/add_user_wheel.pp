user { 'alice':
  ensure => 'present',
  gid => 'examplegroup',
  groups => 'wheel',
  managehome => true,
}