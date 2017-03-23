$ntp_conf = @(END)
driftfile /var/lib/ntp/drift
server tock prefer iburst
server uk.pool.ntp.org
END
