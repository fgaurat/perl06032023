#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
use LWP::Simple;


sub dl_files

{
    for(my $i=1;$i<=10;$i++)
    {
        my $url = sprintf("http://logs.eolem.com/apache_logs_%02d.log",$i);
        my @r = split "/",$url;
        my $log_file = $r[-1];
        print($log_file."\n");

        getstore($url, $log_file);
    }
}

# dl_files();

# Read all log files

my $regex_status_http = qr/"\s404/;

my @log_files = glob("*.log");
print(Dumper(@log_files));
# my $l =`ls -l`;
# print($l);
my $cpt = 0;
my $cpt_404 = 0;
foreach my $log_file (@log_files)
{
    open(LOG,'<',$log_file);
    while (my $ligne = <LOG>)
    {
        print($ligne);
        if ($ligne=~$regex_status_http){
            $cpt_404++;
        }        
        $cpt++;
    }
    close(LOG);
}
print("$cpt lignes\n");
print("$cpt_404 erreurs 404\n");