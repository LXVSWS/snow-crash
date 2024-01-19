#!/usr/bin/perl
$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$passwd = "cat /etc/passwd | grep flag01";
print "$passwd\n", `ssh -qp 4242 level01\@$ip '$passwd'`;
