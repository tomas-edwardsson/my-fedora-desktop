class puppet {
	
}
class puppet::devel {
	package { 'rubygems':
		ensure => 'present'
	}
	package { 'puppet-module':
		ensure => present,
		provider => 'gem',
		require => Package['rubygems'],
	}
}
