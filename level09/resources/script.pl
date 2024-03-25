#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level09";

$cmd = "ssh -qp $port $user\@$ip 'cat token && cat token | xxd -p'";
print $green, $cmd, $reset, "\n";
system($cmd);

$tool = "gcc caesarv2.c && ./a.out ";
print $tool;
$input = <STDIN>;
chomp($input);
$cmd2 = $tool.$input." && rm a.out\n";
system($cmd2);

$flag = "ssh -qp $port flag09\@$ip 'getflag'";
print $red, $flag, $reset, "\n";
system($flag);
