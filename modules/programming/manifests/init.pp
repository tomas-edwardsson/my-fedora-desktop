

class programming {
	include programming::git
	include programming::python
	include programming::c
}

class programming::git {
	package { "git": ensure => installed }
	package { "subversion": ensure => installed }
}

class programming::python {
	# Python stuff
	package { "ipython": ensure => installed }
	package { "wxPython": ensure => installed }
}

class programming::c {
	package { "gcc": ensure => installed }
}
