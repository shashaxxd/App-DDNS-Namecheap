use Data::Dumper;

use Test::More tests => 6;

use lib "../lib/";
use App::DDNS::Namecheap;

my $domain = 'site.com';
my $ip = '127.0.0.1';
my $pw = 'abcdefghijklmnopqrstuvwxyz123456';
my $hosts = [ '@', 'www' ];

my $update = App::DDNS::Namecheap->new( domain => $domain, ip => $ip, pw => $pw, hosts => $hosts );

ok( defined $update );
ok( $update->isa('App::DDNS::Namecheap'));
ok( $update->{domain} eq $domain );
ok( $update->{ip} eq $ip );
ok( $update->{pw} eq $pw );
ok( $update->{hosts} ~~ $hosts );