#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => 'coin';
zci is_cached => 0;

ddg_goodie_test(
	[qw(
		DDG::Goodie::Coin
	)],
	'flip a coin' => test_zci(qr/(heads|tails)/),
     'flip 1 coin' => test_zci(qr/(heads|tails)/),
     'flip 2 coins' => test_zci(qr/(heads|tails) (heads|tails)/),
);

done_testing;

