#!/usr/bin/perl
use strict;
use warnings;
 
 my %list = ();
 
my $usb_no = <>;
my $ps_2_no = <>;
my $both = <>;

my $m = <>;

while($m--) {
  my $line = <>;
  $list{$m} = $line;
}

my $sum = 0;
my $no_mouse = 0;

foreach my $mouse (sort values %list) {
    my @split_mouse = split(" ", $mouse);
    if($split_mouse[1] eq "USB" && $usb_no != 0) {
      $usb_no--;
      $sum += $split_mouse[0];
      $no_mouse ++;
    } elsif($split_mouse[1] eq "PS/2" && $ps_2_no != 0) {
	$ps_2_no --;
	$sum += $split_mouse[0];
        $no_mouse ++;	
   } elsif($both != 0) {
	$both --;
	$sum += $split_mouse[0];
	$no_mouse ++;
   }
}

print "$no_mouse $sum";
