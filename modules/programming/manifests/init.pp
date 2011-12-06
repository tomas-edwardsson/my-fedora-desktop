

class programming {
	include programming::git
}

class programming::git {
	package { "git": ensure => installed }
	package { "subversion": ensure => installed }
	package { "ipython": ensure => installed }
}
