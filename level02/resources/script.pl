#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$file = "level02.pcap";

print $green, "ft_waNDReL0L\n", $reset;
system("ssh -qp $port flag02\@$ip 'getflag'");
