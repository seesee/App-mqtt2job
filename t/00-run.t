#!/usr/bin/env perl

use strict;
use warnings;

use lib 'lib';

use Test::More tests => 1;
use App::mqtt2job qw/ helper_v1 /;

like(helper_v1(), qr/^SCALAR/, "Generated script template scalar" );

done_testing();

