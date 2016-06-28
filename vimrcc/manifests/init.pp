class vimrcc {
	file { '/root/.vimrc':
	ensure => present,
	source => 'puppet:///modules/vimrcc/vimrc',
	}
}
