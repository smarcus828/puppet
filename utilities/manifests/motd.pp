class utilities::motd {
	file { '/tmp/puppet_info.txt' :
		owner => 'root',
		group => 'root',
		mode => '0644',
		content => inline_template("The current $osfamily time is now <%= Time.now %>\n")
		#content => "chicken",
		}
}
