$packages = [ 'nginx', 'squid', 'unzip']

package { $packages :
  ensure => present,
}
