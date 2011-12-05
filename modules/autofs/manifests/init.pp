
# Autofs for usefull /net automounting of nfs
class autofs {
	package { "autofs": ensure => installed }
	service { "autofs": 
		enable => true, 
		ensure => running,
		subscribe => Package['autofs'], 
	}
}
