#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level04";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$scp = "scp -q -P 4242 $user\@$ip:~/level04.pl .";
print $red, $scp, $reset, "\n";
system($scp);

#file $file # basic informations
#ldd $file # dynamic libraries
#objdump -d $file # assembly code
#strings $file # raw strings
#cat /proc/self/maps # memory mappings
#strace ./$file # system calls & signals
#ltrace ./$file # library calls tracer
#readelf -a $file # ELF informations
#xxd $file # binary to hex dump (all infos)
#xxd -p $file # binary to raw hex dump
#xxd -r -p $file # reverse raw hex to binary
