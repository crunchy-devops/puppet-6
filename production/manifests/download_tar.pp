$app_source = 'https://www.python.org/ftp/python/3.9.10/Python-3.9.10.tgz'
$app_tarball = '/tmp/application.tar.gz'

exec { 'download application':
  command => "/usr/bin/wget -q ${app_source} -O ${app_tarball}",
  creates => '/usr/local/application/',
  notify => Exec['extract application'],
}
exec { 'extract application':
  command => "/bin/tar -zxf ${app_tarball} -C /usr/local",
  refreshonly => true,
  creates => '/usr/local/application/',
}
