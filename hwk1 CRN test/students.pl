#! /usr/bin/perl -w
#By Devon McBride
#############################################################
#This Perl script is called <<students>>.
#It searches the group file in /etc/ based on CRN numbers you enter
#as arguements.  You may enter as many CRN numbers as you like, but 
#you must enter at least one or you will get an error message.
#last modified 6/20/03
#############################################################

<@ARGV> or die("No CRN #s were entered. Usage: students CRN1 CRN2 ...");

open (INFILE, "<group") || die("Cannot find CRN data file");

while($line = <INFILE>)
{
	$i = 0;
	while ( $i <= $#ARGV )
	{
		if ( $line =~ /^.$ARGV[$i]/ ) 
		{		
		@record = split(":", $line);			#splits a line with ":".
		@students = split(",", $record[3]);		#splits students up with ",".		
		
		##sort(@students);	#error: Useless use of sort in void context at students.pl line 17.		

		open (OUTFILE, ">$ARGV[$i]");			#opens new file to hold these ids, 
												#named with the classes CRN number.		
		foreach $id (@students)					#prints into that new file.
		{ 
		  print OUTFILE "$id \n";
		}

		close(OUTFILE);
		}
		$i++;
	}
}
close(INFILE);

##foreach $crn (<ARGV>)			#I also attempted here to sort my files, but it didn't work.
##{
##	open(FHREAD, "$crn");
##	@a = (FHREAD);
##	close(FHREAD);		 
##	sort(@a);			
##	open(FHWRITE, ">$crn");		#<---line 40 print on closed filehandle main::FHWRITE
##	print FHWRITE @a;			#            at students.pl line 40, <> chunk 35.
##	close(FHWRITE);
##}

__END__
					
					
					
					
					############### @data = <INFILE>;				#Puts all lines of group file into an array.


				##foreach (<INFILE>)			#fills @classes with only lines with CRNs.
				##{
				##  push(@classes, $_) if /[cC]\d\d\d\d\d/;
				##}
				##print $classes[9];
				###while (@classes)
				###{
				###  s/^[cC]/^/;
				###}






										########$cl = $#classes;
				foreach $cl (@classes)
				{
				  print $cl;
 				 $cr = $#CRNS + 1;
 				 print $cr;
  				while ( $cr > 0 ) 
  				{
    if( /.$cr =~ $cl)				######$classes[$cl]
	{
	print "$cr cr\n";
	print "$cl cl\n";
	  @record = split(":", $classes[$cl]);		#splits a line with ":".
	  @students = split(",", $record[3]);		#splits students up with ",".
											 #################### sort(@students);
		print @class_record;				#this one comes up with the last record in group minus the ":"

	  open (OUTFILE, ">$crn");				#opens new file to hold these ids, 
											#named with the classes CRN number.		
	  
	  foreach $id (@students)				#prints into that new file.
	  { 
	    print OUTFILE "$id \n";
	  }

      close(OUTFILE);
	}
	$cr--;
  }
}
close(INFILE);


__END__





foreach $crn (@CRNS)
{  
  $x = $#data;				#last value of @data (from group file).
  foreach (@data)
  {		   
    if( $data[$x] eq /[cC]$crn/ )		# removed this: ^.
 	{
	  @record = split(":", $data[$x]);		#splits a line with ":".
	  @students = split(",", $record[3]);	#splits students up with ",".

		
		#print @class_record;  this one comes up with the last record in group minus the ":"

	  open (OUTFILE, ">$crn");		#opens new file to hold these ids, 
									#named with the classes CRN number.		
	  sort(@students);

	  foreach $id (@students)		#prints into that new file.
	  { 
	    print OUTFILE "$id \n";
	  }

      close(OUTFILE);

	  
	}
	$x--;		#decrements to next record in array made from group.
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

