#!/usr/bin/perl 

$#nums = 4;

foreach $n (@nums)
{
$n = int(rand(48));
}
				#print $#nums, "\n";
				#print @nums, "\n";
				# $#lotto = 4;

				# @lotto = sort(@nums);

@lotto = sort({$a <=> $b} @nums);


#####################HOW DO i GET UNIQUE NUMBERS FOR MY ARRAY!????



foreach $i (@lotto)
{
print $i, "\n";
}


