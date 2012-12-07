#!/usr/bin/perl -w
# CIS167P, Homework #1, Summer 2003

if ( @ARGV == 0 ) {die ("useage: students CRN1 CRN2 ...");}
for($i=0; $i<=$#ARGV; $i++)
{
  open(HAND, "</etc/group") or die("can not open /etc/group");
  while ($record = <HAND>)
  {
     chomp($record);
     if ($record =~ /$ARGV[$i]/i)
     {
        open(ARG, ">$ARGV[$i]") or die("can not open $ARGV[$i]\n");
        @group_rec = split(":", $record);
        $d = pop(@group_rec);    # pick the last field. 
        @uids=sort(split(",",$d));
        foreach (@uids)
        {
            print ARG "$_\n";
        }
        close(ARG); close(HAND);
        last;
     }
  }
}
exit;

