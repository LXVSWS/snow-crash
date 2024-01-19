#!/usr/bin/perl
$ip = @ARGV ? $ARGV[0] : "192.168.56.2";
$find = "find / -user flag00 2>/dev/null";
$input = `ssh -qp 4242 level00\@$ip '$find ; $find | head -n 1 | xargs cat'`;
@pass = split("\n", $input);
print "$find\n$input", `gcc caesar.c && ./a.out $pass[2] && rm a.out`;
system("ssh -qp 4242 flag00\@$ip 'getflag'");
