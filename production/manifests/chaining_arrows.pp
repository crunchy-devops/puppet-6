file { '/tmp/dansfile':
  ensure => file,
}
-> file_line { 'dans_line':
  line => 'dan is awesone',
  path => '/tmp/dansfile',
}