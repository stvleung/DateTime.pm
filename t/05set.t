use strict;

use Test::More tests => 14;

use DateTime;

use lib './t';
require 'testlib.pl';

my $t = DateTime->new( year => 1996, month => 11, day => 22,
                       hour => 18, minute => 30, second => 20,
                       time_zone => 'UTC',
                     );

is( $t->month, 11, 'check month' );

$t->set( month => 5 );
is( $t->year, 1996, 'check year after setting month' );
is( $t->month, 5, 'check month after setting it' );
is( $t->day, 22, 'check day after setting month' );
is( $t->hour, 18, 'check hour after setting month' );
is( $t->minute, 30, 'check minute after setting month' );
is( $t->second, 20, 'check second after setting month' );

$t->set( time_zone => 'America/Chicago' );
is( $t->year, 1996, 'check year after setting time zone' );
is( $t->month, 5, 'check month after setting time zone' );
is( $t->day, 22, 'check day after setting time zone' );
is( $t->hour, 18, 'check hour after setting time zone' );
is( $t->minute, 30, 'check minute after setting time zone' );
is( $t->second, 20, 'check second after setting time zone' );
is( $t->time_zone->name, 'America/Chicago',
    'check time zone name after setting new time zone' );