

class programming {
	include programming::git
}

class programming::git {
	package { "git": ensure => installed }
}
