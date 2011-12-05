
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

	# Modify the xorg.conf
	exec { "nvidia-xconfig":
		command => "/usr/sbin/nvidia-xconfig",
		refreshonly => true,
	}
}
