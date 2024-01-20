#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
system("ssh -qp 4242 level02\@$ip 'tcpdump -r level02.pcap -A'");
#system("file $file > ./log"); # basic informations")
#system("ldd $file >> ./log"); # dynamic libraries
#system("objdump -d $file >> ./log"); # assembly code
#system("strings $file >> ./log"); # raw strings
