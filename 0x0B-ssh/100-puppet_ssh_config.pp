#  changes the ssh configuration file using Puppet.

file_line { 'Turn off password auth':
  ensure => 'present',
    path => '/etc/ssh/ssh_config',
    line => '    PasswordAuthentication no',
  match  => '#     PasswordAuthentication yes',
}

file_line { 'Declare identity file':
  ensure => 'present',
    path => '/etc/ssh/ssh_config',
    line => '    IdentityFile ~/.ssh/school',
}
