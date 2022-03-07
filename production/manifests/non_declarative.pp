# ensure custom app version 1.2.3
if $facts['custom_app_version'] != '1.2.3' {
  exec { 'download application':
    command => "/usr/bin/wget -q ${app_source} -O ${app_tarball}",
  }
  exec { 'extract application':
    command => "/bin/tar -zxf /tmp/${app_tarball} -C /usr/local",
    require => Exec['download application'],
  }
}