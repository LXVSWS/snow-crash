#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$file = "level02.pcap";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$cmd = "scp -q -P 4242 level02\@$ip:~/$file .";
print $red, $cmd, "\n", $reset;
system($cmd);
print $green, "ft_wandrNDRelL0L\n", $reset;
system("ssh -qp 4242 flag02\@$ip 'getflag'");
