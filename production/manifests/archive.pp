$dirname = 'apache-tomcat-9.0.0.M3'
$filename = "${dirname}.zip"
$install_path = "/home/centos/${dirname}"

file { $install_path:
  ensure => directory,
  owner  => 'centos',
  group  => 'centos',
  mode   => '0755',
}

package { 'unzip' :
  ensure => present,
}

archive { $filename:
  path          => "/tmp/${filename}",
  source        => 'https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M3/src/apache-tomcat-9.0.0.M3-src.zip',
  checksum      => '79c778814048e22886be110614b39152019f32ea',
  checksum_type => 'sha1',
  extract       => true,
  extract_path  => '/home/centos/',
  creates       => "${install_path}/bin",
  cleanup       => true,
  user          => 'centos',
  group         => 'centos',
  require       => [ File[$install_path], Package['unzip'] ],
}