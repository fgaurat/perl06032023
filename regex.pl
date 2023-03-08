
#!perl.exe
use strict;
use warnings;


# un couple d'élément => 1 caractère 1 quantificateur (combien de fois)

# quantificateur
# ? => 0 ou 1 fois => a?
# + => 1 fois ou n fois => a+ a aa aaa
# * => 0 fois ou n fois => a* a aa aaa b
# {3} => exatement 3 => aaa
# {1,3} => 1 fois mini ou 3 fois max a{1,3} => a aa aaa 
# {3,} => 3 fois mini ou n fois max a{3,} => aaa 
# /(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\:\d{1,5})/
# 999.168.1.12:8080

# \d{1,3}

# ^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}
# ^.+?\s


my $regex_ip = qr/^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/mi;
$regex_ip = qr/^(.+?)\s/; # greedy
my $ligne = '40.77.167.4 site06.com - [29/Mar/2021:00:00:02 +0200] "GET /wp-includes/css/dist/block-library/theme.min.css?ver=5.6.2 HTTP/1.1" 200 741 "-" "Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)"';
if ($ligne=~$regex_ip)
{
    print("ok\n");
    print($1);
    print("\n");
}
else
{
    print("ko");
}

my $regex_status_http = qr/"\s(\d{3})/;
if ($ligne=~$regex_status_http){
    print($1);
}
else{
    print("pas trouvé !");
}