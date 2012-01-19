

class programming {
	include programming::git
	include programming::python
	include programming::python::django
	include programming::c
	include programming::misc
	include programming::flickr
	include programming::rpmbuild
}

class programming::rpmbuild {
	package { "tito": ensure => installed }
}

class programming::misc {
	package { "fuse-devel": ensure => installed }
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

class programming::python::django {
	package { "Django": ensure => installed }
}

class programming::c {
	package { "gcc": ensure => installed }
}

class programming::flickr {
	package { "fuse-python": ensure => installed }
	package { "glib2-devel": ensure => installed }
	package { "flickcurl": ensure => installed }
	package { "flickcurl-devel": ensure => installed }
}
