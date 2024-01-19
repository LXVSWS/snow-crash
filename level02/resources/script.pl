#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
system("ssh -qp 4242 level02\@$ip 'strings level02.pcap'");
