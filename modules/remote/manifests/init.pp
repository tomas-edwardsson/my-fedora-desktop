
class remote {
	include remote::remmina
}

class remote::remmina {
	package { 'remmina': ensure => installed }
	package { 'remmina-plugins-rdp': ensure => installed }
}
