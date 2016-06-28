class utilities::gogreen {
	file { '/tmp/green.txt':
	ensure => present,
	source => 'puppet:///modules/utilities/green.txt',
	}
}

class utilities::gored {
	file { '/tmp/red.txt':
	ensure => present,
	source => 'puppet:///modules/utilities/red.txt',
	}
}

class utilities::goblue {
	file { '/tmp/blue.txt':
	ensure => present,
	source => 'puppet:///modules/utilities/blue.txt',
	}
}
