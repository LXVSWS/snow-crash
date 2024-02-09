#!/usr/bin/perl

$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$user = "level08";

$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$scp = "scp -q -P 4242 $user\@$ip:~/level08 .";
print $red, $scp, $reset, "\n";
system($scp);

# ln -s token flag && chmod 777 flag
# flag08 quif5eloekouj29ke0vouxean
