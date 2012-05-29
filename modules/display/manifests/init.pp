
class display {
}

class display::nvidia {
	# I need some extra repos for nvidia configuration
	include repos

	# Install the driver
	package { "xorg-x11-drv-nvidia": 
		ensure => installed, 
		subscribe => Exec['install-rpmfusion-nonfree'], 
		notify => Exec['nvidia-xconfig'],
	}
	package { "kmod-nvidia":
		ensure => installed, 
		subscribe => Exec['install-rpmfusion-nonfree'], 
	}

	# Modify the xorg.conf
	exec { "nvidia-xconfig":
		command => "/usr/sbin/nvidia-xconfig",
		refreshonly => true,
	}

	# For Wine we need 32 bit
	package { "xorg-x11-drv-nvidia-libs.i686":
		ensure => installed }
}
