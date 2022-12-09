# kills a process named 'killmenow' using puppet

exec { 'killmenow':
  command => '/usr/bin/pkill killmenow'
}
