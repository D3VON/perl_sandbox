#!/usr/bin/perl





while ( rand($x) != $ARGV....)

unique()?












open(IN, "etc/group") or die ("Cannot find the group file to extract CRN record(s) from.")
open(OUT1, ">our_crns")
#here I'm trying to dump just the CRNs I want into a new file to work with later.

$i = 0
foreach (@IN) 
{
	print "*" if $IN[$i] == "^[Cc]\d{5}*"
	$i++
}
close(IN)
close(OUT1)












$line = "123:woofie#4...:234234:dmcbri01,mtan01,dgrey01,gbailey";

@record = split(":", $line);
print $record[3], "\n";

@students = split(",", $record[3]);

foreach $id (@students) 
{
	print $id, "\n";
}
