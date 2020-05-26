#!/usr/bin/perl

use strict;
use warnings;
use List::Util qw(min);

my %letters = ( 'B' => 0, 'b' => 0, 'u' => 0, 'a' => 0, 'r' => 0, 'l' => 0, 's' => 0);

sub countLetters {
  my $str = @_;
  
  print $str;
  
  for my $chr (split //, $str) {
    if(exists $letters{$chr} ) {
      ++$letters{$chr};
    } else {
      $letters{$chr} = 1;
    }
  }
}

sub countWrdBul {
  
  my %ref= @_;
  
  print %ref;
  
  #print %ref->{"B"};
  
  #my $answer = $ref->{'B'};
  #$answer = min($answer, $ref->{'u'} / 2);
  #$answer = min($answer, $ref->{'a'} / 2);
  #$answer = min($answer, $ref->{'b'});
  #$answer = min($answer, $ref->{'l'});
  #$answer = min($answer, $ref->{'r'});
  #$answer = min($answer, $ref->{'s'});

  #print $answer;
}

my $str = <>;

print keys %letters;

#countLetters($str);

#countWrdBul(\%letters);