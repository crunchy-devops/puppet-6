notify { 'Hello world':
  message => "Hello world",
}

package { 'nginx':
  ensure => present,
}

