$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
$DNA2 = 'ATAGTGCCGTGAGAGTGATGTAGTA';
print "Here are the original two DNA fragments:\n\n";
print $DNA, "\n";
print $DNA2, "\n\n";
$DNA3 = "$DNA$DNA2";
print "Here is the concatenation of the first two fragments:\n\n";
print $DNA3, "\n\n\n\n";


print "Here is the starting DNA:\n\n";
print "$DNA\n\n";
$RNA = $DNA;
$RNA =~ s/T/U/g;
print "Here is RNA transcript:\n\n";
print "$RNA\n";
