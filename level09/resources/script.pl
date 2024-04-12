#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level09";

$exploit = "cat token && cat token | xxd -p";
$cmd = "ssh -qp $port $user\@$ip '$exploit'";
print $red, $exploit, $reset, "\n";
system($cmd);

$tool = "gcc caesarv2.c && ./a.out ";
print $tool;
$input = <STDIN>;
chomp($input);
$cmd2 = $tool.$input." && rm a.out\n";
print $green, `$cmd2`, $reset;

system("ssh -qp $port flag09\@$ip 'getflag'");
