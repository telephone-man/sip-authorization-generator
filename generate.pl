use strict;
use warnings;
use Digest::MD5 qw(md5_hex);

my $username =    $ARGV[0];
my $realm =       $ARGV[1];
my $password =    $ARGV[2];
my $uri =         $ARGV[3];
my $nonce =       ":$ARGV[4]:";

my $string1 =     "$username:$realm:$password";
my $string2 =     "REGISTER:$uri";

my $response =    md5_hex(md5_hex($str1) . $nonce . md5_hex($str2);

print "Username:$username\tRealm:$realm\tPassword:$password\turi:$uri\tnonce:$nonce\tresponse:$response\n";
