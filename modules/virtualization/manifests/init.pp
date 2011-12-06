class virtualization {
	package { "libvirt": ensure => installed }
	package { "python-virtinst": ensure => installed }
	package { "qemu-kvm": ensure => installed }
	package { "virt-manager": ensure => installed }
	package { "virt-viewer": ensure => installed }

	
}
