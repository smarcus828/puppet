class utilities::test01 {
	
#if $is_virtual {
#	file { '/tmp/orange.txt':
#	ensure => present,
#	source => 'puppet:///modules/utilities/orange.txt',
#	}
#  }

#if $is_virtual {
#	file { '/tmp/orange.txt':
#	ensure => present,
#	content => "w00t w00t w00t",
#	}

#exec { 'orange is NOT found' :
#       command => "touch /tmp/THERE_IS_NO_ORANGE",
#       user 	=> root,
#       unless	=> "test -f /tmp/orange.txt",   # if this is true DONT do it AND unless is only accepted by exec
#       path	=> ['/usr/bin','/bin'],
#}
#
#exec { 'orange IS found' :
#       command => "touch /tmp/ORANGE_IS_THERE",
#       user 	=> root,
#       unless	=> "test ! -f /tmp/orange.txt",   # completely bassackward way to test
#       path	=> ['/usr/bin','/bin'],
#}

#package { 'dialog' :
#	ensure 	=> present,
#}

exec { 'check for /tmp/orange.txt':
	command => 'printf HEllo', 
        path	=> ['/usr/bin','/bin'],
	unless  => "test ! -f /tmp/orange.txt",
}





}
