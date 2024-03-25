#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level07";

$scp = "scp -q -P $port $user\@$ip:~/level07 .";
print $red, $scp, $reset, "\n";
system($scp);

# LOGNAME=\&\&getflag
