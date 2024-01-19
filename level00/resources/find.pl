#!/usr/bin/perl
$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$find = "find / -user flag00 2>/dev/null";
print "$find\n", `ssh -qp 4242 level00\@$ip '$find ; $find | xargs cat'`;
system("ssh -qp 4242 flag00\@$ip 'getflag'");
