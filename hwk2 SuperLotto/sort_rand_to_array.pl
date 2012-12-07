#!/usr/bin/perl
#DOESN'T WORK.  JUST ENSURES TWO NUMBERS GENERATED NEXT TO EACH OTHER AREN'T THE SAME, BUT THEN COULD BE THE SAME WHEN SORTED

					# sub populate;

$n[0] = int(rand(48));
$n[1] = int(rand(48));
if ( $n[0] != $n[1] )
{
   @lotto = sort({$a <=> $b} @n);
}


$n[1] = int(rand(48));
$n[2] = int(rand(48));
if ( $n[1] != $n[2] )
{
   @lotto = sort({$a <=> $b} @n);
}


$n[2] = int(rand(48));
$n[3] = int(rand(48));

if ( $n[2] != $n[3] )
{
   @lotto = sort({$a <=> $b} @n);
}

$n[3] = int(rand(48));
$n[4] = int(rand(48));

if ( $n[3] != $n[4] )
{
   @lotto = sort({$a <=> $b} @n);
}

foreach $i (@lotto)
{
   print $i, "\n";
}
