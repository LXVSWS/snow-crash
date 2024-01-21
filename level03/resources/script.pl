#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$file = "level03";
system("ssh -qp 4242 level03\@$ip 'file $file'"); # basic informations
# system("ldd $file"); # dynamic libraries
#system("objdump -d $file >> ./log"); # assembly code
#system("strings $file >> ./log"); # raw strings
