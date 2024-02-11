#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level09";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$cmd = "ssh -qp 4242 $user\@$ip 'cat token && cat token | xxd -p'";
print $green, $cmd, $reset, "\n";
system($cmd);

$tool = "gcc caesarv2.c && ./a.out ";
print $tool;
$input = <STDIN>;
chomp($input);
$cmd2 = $tool.$input." && rm a.out\n";
system($cmd2);

$flag = "ssh -qp 4242 flag09\@$ip 'getflag'";
print $red, $flag, $reset, "\n";
system($flag);
