use strict;
use warnings;

use v5.18;

my %data;
my $name;

while(my $line = <DATA>) {
  if ( $line =~ /(^[a-z0-9A-Z]+)/ ) {
    $name = $1;
  }

  if ( $line =~ /\s+RX packets:(\d+)/ ) {
    $data{$name}->{RX} = $1;
  }

  if ( $line =~ /\s+TX packets:(\d+)/ ) {
    $data{$name}->{TX} = $1;
  }

}

use Data::Dumper;
print Dumper(\%data);






__DATA__
eth0      Link encap:Ethernet  HWaddr f2:3c:91:67:6d:29
          inet addr:176.58.103.66  Bcast:176.58.103.255  Mask:255.255.255.0
          inet6 addr: fe80::f03c:91ff:fe67:6d29/64 Scope:Link
          inet6 addr: 2a01:7e00::f03c:91ff:fe67:6d29/64 Scope:Global
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:8851094 errors:0 dropped:0 overruns:0 frame:0
          TX packets:9096690 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:1564328972 (1.4 GiB)  TX bytes:14733002973 (13.7 GiB)

eth0:0    Link encap:Ethernet  HWaddr f2:3c:91:67:6d:29
          inet addr:178.79.150.27  Bcast:178.79.150.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:10200680 errors:0 dropped:0 overruns:0 frame:0
          TX packets:10200680 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:15939442551 (14.8 GiB)  TX bytes:15939442551 (14.8 GiB)

