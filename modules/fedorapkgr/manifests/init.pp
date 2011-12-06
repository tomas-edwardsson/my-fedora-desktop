class fedorapkgr {
	package { "fedora-packager": ensure => installed }
	package { "python-devel": ensure => installed }
	package { "python-setuptools": ensure => installed }
}
