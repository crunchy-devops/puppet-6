$dir_path = '/var/lib/pgsql/data/pg_hba.conf'
exec { 'module_postgresql':
  command => '/bin/dnf -y module enable postgresql:13',
}

package { 'postgresql-server':
  ensure => present,
}

service { 'postgresql':
    ensure => running,
    enable => true,
}

if $dir_path {
  notify{ "Path ${dir_path} exist": }
}
else {
    exec { 'init_db':
            command => '/usr/bin/postgresql-setup --initdb',
         }
}

file_line { "change pg-hba.conf":
  ensure => present,
  match => "^# test",
  line => ' # test formation',
  path => '/var/lib/pgsql/data/pg_hba.conf',
  notify => Service['postgresql'],
}



