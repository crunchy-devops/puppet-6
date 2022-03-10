group { 'examplegroup':
  ensure => 'present',
}
user { 'alice':
  ensure => 'present',
  gid => 'examplegroup',
  managehome => true,
}
ssh_authorized_key { 'alice@localhost':
  ensure => 'present',
  user => 'alice',
  type => 'ssh-rsa',
  key => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDVBoBeFgGyu6xkr93kqYbYnrxrQJNlor6XyUNMMXBZzo1hUZD0tYa6vFX5GOMK99xjuk1AtjU4jtisnQhh7Yb7hc8cwOzeLadVV/xZ1oJOU+1FiHx9Gg0Bx25P7Qyb0iTb/3XAoIs8vbQZ2C0N/Zu35e67JUiNu5h/HXwfF1Q8TJB7RjmR7vBFS/jfi3uPxz5vHhqs1Bmd7efcn20sMxEwnphcj7iWBaxe6pPruy0toedazYd/JVGrRwrJ+5cLQYIFlB/x0ifWY2QAQ5QdSfdWCwszTVDY0erk4Zm/T72hmoxjh6TLyrNV1JqoJOc6WEqIyXQn8ACSkgLHTXRtbZf0Dzb3VgeEqUXKKZvM2bIW0elIMcvagEWfqXI6mx3nLNP7La4r3Q7G0X+vsAjHkdMpUaf8UdgRVAdxkNqDVZzDhfw8XUTL4ZcdV4UXPlJQdWBoNkthmtjV/3+K4e3nhL0SeLE3IK1j/gulUtuRPH4GUau4mcKaJZXCqMq9jl6jlx84PjlAZU0hMqB9TI+YteRAe5kS9YoCEZvy3Ozmb/vXMemEud9lqE0rpLukpZye6BZoJEODboC2jvFGXvtTBCN2f+JPFcrvv3Kxj2ENejPeyZow3c+rSDmrHb7Yuaa7GpH7uM49TNxo7xUdK9JMUtZBHjUpEZhLTXtV9ePCLKqAuKQ=='
}

