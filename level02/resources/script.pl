#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$file = "level02.pcap";
$cmd = "scp -q -P 4242 level02\@$ip:~/$file . && chmod 777 $file\n";
system($cmd);
print $cmd, "ft_wandrNDRelL0L\n";
system("ssh -qp 4242 flag02\@$ip 'getflag'");
