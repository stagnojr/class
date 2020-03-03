<?php

#Author - Jason Stagno
print "Hello world\n";

#variable
$DNA = 'AGCTAGCTGACTATACGTGACTAGCTATCG';
print $DNA. "\n";

$DNA2 = 'ACCGATGCTAGCTAGCTATGCTA';
print "Here are the original DNA fragments:\n\n";
print $DNA."\n";
print $DNA2."\n";
$DNA3 = "$DNA$DNA2";
print "Here is my concatenation:\n\n";
print $DNA3."\n";

$RNA = $DNA3;
$RNA = str_replace("T","U",$RNA);
print "Here is my RNA:\t";
print "$RNA\n";

?>
