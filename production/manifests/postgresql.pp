exec { 'module_postgresql':
  command => '/bin/dnf module enable postgresql:13',
}

package { 'postgresql-server':
  ensure => present,

}

service { 'postgresql':
    ensure => running,
}

exec { 'init_db':
  command => '/usr/bin/postgresql-setup --initdb',
}






