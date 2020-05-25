my $input_user = <>;

($N, $K) = split(' ', $input_user);

my $no_div = 0;
my $gasit = 0;
for( $i = 1; $i <= $N / 2; ++$i) {
	if($N % $i == 0) {
		++$no_div;
		if($K == $no_div) {
			print $i;
			$gasit = 1;
		} 
	}
}
if(++$no_div == $K && !$gasit) {
	print $N;
	$gasit = 1;
}
if(!$gasit) {print -1;}