
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

	# Use ATRPMS solely for DVD playback
	exec { "install-atrpms":
		command => '/usr/bin/yum -y install http://dl.atrpms.net/all/atrpms-repo-16-4.fc16.x86_64.rpm',
		creates => '/etc/yum.repos.d/atrpms.repo',
	}
	augeas{"atrpms-decss-only" :
  		context => "/files/etc/yum.repos.d/atrpms.repo/atrpms",
  		changes => ["set includepkgs libdvdcss*", "set metadata_expire 7d" ],
		subscribe => Exec['install-atrpms'],
	}

	# Flash
	exec { "install-adobe-linux":
		command => '/usr/bin/yum -y install http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm',
		creates => '/etc/yum.repos.d/adobe-linux-x86_64.repo',
	}

	# Find a closeby mirror
	package { "yum-plugin-fastestmirror": ensure => installed }
	package { "yum-plugin-downloadonly": ensure => installed }
}
