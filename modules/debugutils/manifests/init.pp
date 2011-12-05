
class debugutils {
	# Network sniffing
	package { ["wireshark", "wireshark-gnome"]: ensure => installed }

	# When stuff gets really broke
	package { "strace": ensure => installed }

	# Check some statistics
	package { "sysstat": ensure => installed }
}
