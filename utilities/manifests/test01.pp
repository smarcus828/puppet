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

#exec { 'orange IS found' :   ####  THIS is better - this works #####
#       command => "touch /tmp/ORANGE_IS_THERE",
#       user 	=> root,
#       onlyif	=> ['ls /tmp/orange.txt'],
#       path	=> ['/usr/bin','/bin'],
#}


##############################################################################################################
################  Had to give up on this - trying to install dialog if /tmp/orange.txt exists - never worked ##########
#exec { "check_presence" :
#	command => '/bin/true',
#	onlyif	=> '/usr/bin/test -f /tmp/orange.txt',
#	#before => Package['dialog'],
#}
#
#package { 'dialog' :
#	require => Exec["check_presence"],
#	ensure 	=> present,
#}
##############################################################################################################
##############################################################################################################


##############################################################################################################
####################### execs in sequence WORKS ##############################################################
##############################################################################################################
$cmdpath = [ "/bin", "/usr/bin" ]

exec { 'something 1' :
	path 	=> $cmdpath,
	command	=> "touch /tmp/file1",
#	onlyif	=> '/usr/bin/test -f /tmp/orange.txt'  		# runs only if a file is present
	onlyif  => '/bin/rpm -qa | grep dialog'			# runs only if a package is installed

}~>
exec { 'something 2' :						# runs only if something 1 works
	path 	=> $cmdpath,
	command	=> "touch /tmp/file2",
	refreshonly	=> true,
}~>
exec { 'something 3' :						# runs only if something 2 works
	path 	=> $cmdpath,
	command	=> "touch /tmp/file3",
	refreshonly	=> true,
}
##############################################################################################################









}




