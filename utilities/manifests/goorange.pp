class utilities::goorange {
	file { '/tmp/orange.txt':
	ensure => present,
	source => 'puppet:///modules/utilities/orange.txt',
	}
}
