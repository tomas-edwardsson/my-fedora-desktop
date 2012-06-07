
#class nss() {
	#
#}

class nss::nomdns {
	# mdns4_minimal makes .local slow/disfunctional in /etc/nsswitch.conf
	exec { 'sed -i "s/ mdns4_minimal \[NOTFOUND=return\]//g" /etc/nsswitch.conf': 
		path => '/bin:/sbin:/usr/bin:/usr/sbin',
		onlyif => 'grep " mdns4_minimal \[NOTFOUND=return\]" /etc/nsswitch.conf'
	}
}

