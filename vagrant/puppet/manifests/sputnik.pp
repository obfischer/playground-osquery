#
# Configuration of Sputnik
#


group { 'team-berlin':
  ensure => present,
}

group { 'team-london':
  ensure => present,
}

group { 'team-hamburg':
  ensure => present
}
