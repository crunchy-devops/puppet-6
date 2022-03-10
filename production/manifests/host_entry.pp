# same /etc/host

host {'ntpserver.example.com':
  ip => '10.100.100.10',
}

resource { 'host' :
  purge => true,
  noop => true,
}