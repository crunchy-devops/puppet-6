
$directoryname = ['facter', 'hiera', 'mco', 'puppet']

$directoryname.each | String $directory | {
  file { "/home/centos/${directory}":
    ensure => directory,
    owner => 'centos',
    group => 'centos',
    mode => '0755',
  }
}