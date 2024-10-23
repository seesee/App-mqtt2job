#!/usr/bin/env perl

use strict;
use warnings;

use lib 'lib';

use Test::More tests => 1;
use App::mqtt2job qw/ ha_helper_cfg /;

like(ha_helper_cfg(), qr/^SCALAR/, "Generated ha helper scalar" );

done_testing();

