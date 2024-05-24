#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level13";

$chmod = "chmod 777 .";
$ssh = "ssh -qp $port $user\@$ip '$chmod && rm -rf hex'";
print $red, $chmod, $reset, "\n";
system($ssh);

$scp = "scp -q -P $port ./hex $user\@$ip:~";
print $green, $scp, $reset, "\n";
system($scp);

$exploit = "xxd -r -p hex exploit && chmod 777 exploit && ./exploit";
print $red, $exploit, $reset, "\n";
system("ssh -qp $port $user\@$ip '$exploit'");
