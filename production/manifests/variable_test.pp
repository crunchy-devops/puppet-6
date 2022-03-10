$package = $::operatingsystem ? {
  /(?i:Ubuntu|Debian|Mint)/ => 'apache2',
  default                   => 'httpd',
}
notify {
  "package ${package}":
}