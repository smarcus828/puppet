class utilities::user_stuff {

user { 'fred' :
	name 	=> 'fred',
	comment	=> 'lives in bedrock',
	home	=> '/home/fred',
	ensure	=> present,
	uid	=> 901,
	managehome  => true,
	password_max_age	=> 40,
	password_min_age	=> 5,
	groups		=> 'wheel',
}

}
