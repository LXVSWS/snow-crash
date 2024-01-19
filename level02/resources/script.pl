#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$file = "level02.pcap";
system("scp -q -P 4242 level02\@$ip:/home/user/level02/$file .");
system("chmod 777 $file && file $file > ./log"); # basic informations
#system("ldd $file >> ./log"); # dynamic libraries
#system("objdump -d $file >> ./log"); # assembly code
#system("strings $file >> ./log"); # raw strings
system("cat log && rm -rf level02.pcap log");
