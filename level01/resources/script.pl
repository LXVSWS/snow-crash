#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$passwd = "cat /etc/passwd | grep flag01";
$input = `ssh -qp 4242 level01\@$ip '$passwd'`;
@split = split(':', $input);
$pass = $split[1];
print $red, "$passwd\n", $reset, $input, "$pass\n", $green, `echo $pass > pass ; john pass --show | head -n 1 && rm pass`, $reset;
system("ssh -qp 4242 flag01\@$ip 'getflag'");
