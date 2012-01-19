class auth::kerberos {
  #/files/etc/krb5.conf/libdefaults/dns_lookup_kdc = "true"
  augeas { "kdb5.conf enable dns_lookup_kdc":
    context => "/files/etc/krb5.conf",
    changes => ["set libdefaults/dns_lookup_kdc true"],
    onlyif => "get libdefaults/dns_lookup_kdc != true",
  }
}
