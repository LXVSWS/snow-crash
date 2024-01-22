#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$file = "level03";
system("ssh -qp 4242 level03\@$ip 'file $file && ldd $file'"); # basic informations & dynamic libraries
#system("objdump -d $file > ./dump"); # assembly code
#system("strings $file >> ./strings"); # raw strings
