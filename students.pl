#! /usr/bin/perl -w
#By Devon McBride

<@ARGV> or die("No CRN #s were entered. Usage: students CRN1 CRN2 ...");

@CRNS = @ARGV;			#Puts arguements (CRNS) neatly into an array.

open (INFILE, "<group") || die("Cannot find CRN data file");

@data = <INFILE>;				#Puts all lines of group file into an array.

foreach $crn (@CRNS)
{   
  $x = $#data;				#last value of @data (from group file).
  foreach (@data)
  {		   
    if ( $data[$x] = /^[Cc]$crn/ )
 	{
	  @class_record = split(":", $data[$x]);		#splits a line with ":".
	  @student_ids = split(",", $class_record[3]);	#splits students up with ",".

	  open (OUTFILE, ">$crn");		#opens new file to hold these ids, 
										#named with the classes CRN number.		

	  foreach (@student_ids)			#prints into that new file.
	  { 
	    print "$_ \n";
	  }

      close(OUTFILE);

	  $x = $x - 1;		#decrements to next record in array made from group.
	}
  }
}

close(INFILE);


__END__

#####$x = $#CRNS;				#Counter is value of last element 
#####while ( $x >= 0 )			#in array of cmnd line args.

$i = 0;
foreach (@records)
{
	print $records[$i] if /^[Cc]\d{5}/;
	$i++;
}

########print @CRNS, "\n";

########print "This is with my made-up variable to count elements in ARGV\n";
########foreach $i (<@ARGV>)
########{
########   print "$i\n";
########}
########print "\n\n";

########print "This is with the written \$_ to count the elements in ARGV\n"; 
########foreach (<@ARGV>)
########{
########   print "$_ \n";
########}
########print "\n\n";

########print "This is with totally phantom, unwritten \$_ and bare print\n";
########foreach (<@ARGV>) 
########{
########   print;
########   print "\n";
########} 

