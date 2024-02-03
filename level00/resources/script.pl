#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$find = "find / -user flag00 2>/dev/null";
$input = `ssh -qp 4242 level00\@$ip '$find ; $find | head -n 1 | xargs cat'`;
@pass = split("\n", $input);
print $red, "$find\n", $reset, $input, $green, `gcc caesar.c && ./a.out $pass[2] 11 && rm a.out`, $reset;
system("ssh -qp 4242 flag00\@$ip 'getflag'");
