#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "flag10";

system("ssh -qp $port $user\@$ip 'getflag'");
