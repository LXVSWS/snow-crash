#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level10";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$scp = "scp -q -P 4242 $user\@$ip:~/level10 .";
print $red, $scp, $reset, "\n";
system($scp);