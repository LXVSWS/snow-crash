#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$find = "find / -user flag00 2>/dev/null";
print $red, "$find\n", $reset;
$input = `ssh -qp $port level00\@$ip '$find ; $find | head -n 1 | xargs cat'`;
@pass = split("\n", $input);
print $input, $green, `gcc caesar.c && ./a.out $pass[2] 11 && rm a.out`, $reset;
system("ssh -qp $port flag00\@$ip 'getflag'");
