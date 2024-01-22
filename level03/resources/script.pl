#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$file = "level03";
$cmd = "scp -q -P 4242 level03\@$ip:~/level03 .";
system($cmd);
print $cmd;

#file $file # basic informations
#ldd $file # dynamic libraries
#objdump -d $file # assembly code
#strings $file # raw strings
#cat /proc/self/maps # memory mappings
#strace ./$file # system calls & signals
#ltrace ./$file # library calls tracer
#readelf -a $file # ELF informations
#xxd $file # binary to hex dump
#xxd -r $file # reverse hex to binary
