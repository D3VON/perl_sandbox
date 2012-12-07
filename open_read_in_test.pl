#! /usr/bin/perl 

open (FILE, "<group") || die("Cannot find CRN data file");

@data = <FILE>;

foreach (@data)
{
	



$i = 0;
foreach (@records)
{
	print $records[$i] if /^[Cc]\d{5}/;
	$i++;
}

close(FILE);

__END__
