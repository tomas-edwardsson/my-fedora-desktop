
class repos {
	# RPM Fusion for nvidia, video and audio
	exec { "install-rpmfusion-free":
		command => '/usr/bin/yum -y install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm',
		creates => '/etc/yum.repos.d/rpmfusion-free.repo',
	}
	exec { "install-rpmfusion-nonfree":
		command => '/usr/bin/yum -y install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm',
		creates => '/etc/yum.repos.d/rpmfusion-nonfree.repo',
	}

	#augeas{"atrpms-decss-only" :
  		#context => "/files/etc/yum.repos.d/atrpms.repo/atrpms",
  		#changes => ["set includepkgs libdvdcss*", "set metadata_expire 7d" ],
		#onlyif => ["get includepkgs != libdvdcss*", "get metadata_expire != 7d" ],
		#subscribe => Exec['install-atrpms'],
	#}

	# Flash
	exec { "install-adobe-linux":
		command => '/usr/bin/yum -y install http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm',
		creates => '/etc/yum.repos.d/adobe-linux-x86_64.repo',
	}

	# Find a closeby mirror
	package { "yum-plugin-fastestmirror": ensure => installed }
	package { "yum-plugin-downloadonly": ensure => installed }
}

class repos::atrpms {

	# Use ATRPMS solely for DVD playback
	file { '/etc/yum.repos.d/atrpms-bleeding.repo':
		ensure => present,
		content => template('repos/atrpms-bleeding.repo.erb'),
	}
	file { '/etc/yum.repos.d/atrpms.repo':
		ensure => present,
		content => template('repos/atrpms.repo.erb'),
	}
	file { '/etc/yum.repos.d/atrpms-testing.repo':
		ensure => present,
		content => template('repos/atrpms-testing.repo.erb'),
	}

	file { '/etc/pki/rpm-gpg/RPM-GPG-KEY-atrpms':
		ensure => present,
		source => 'puppet:///repos/RPM-GPG-KEY-atrpms',
	}
}
