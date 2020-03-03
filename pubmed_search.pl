#!/usr/bin/perl -w

#This script gets the Pubmed abstracts for a given term

use LWP::Simple;

#search term to find (this will be user input)
$search_term = "coronavirus SARS";

#replace space with + (since users will put spaces in their search, we need to replace them with +)
$search_term =~ s/\s/+/g;

print $search_term;

#maximum number of results to retrieve
$retmax = 10;

$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

#set which database to search
$db_name = 'pmc';

#generate the query url
$url = $base."esearch.fcgi?db=$db_name&retmax=$retmax&term=$search_term";

print $url;

#Submit the search and retrieve the XML based results
$esearch_result=get($url);

print $esearch_result

#extract PubMed IDs using match regex . anything * any number of times, globally
@ids = ($esearch_result =~ m|.*<Id>(.*)</Id>.*|g);

print join(',',@ids);

#delete any old abstract.txt files
unlink "abstract.txt";

#loop through all the ids in the @ids array
foreach $id (@ids)
    {
    print "$id\n";
    #get abstract for each pubmed id
    $fetchurl = $base."efetch.fcgi?db=pubmed&id=$id&retmode=text&rettype=abstract";
    print get($fetchurl);
    #open a new file (filehandle) for appending the output
    open(OUTFILE,'>>','abstracts.txt');
    #get the results and print to the filehandle
    print OUTFILE get($fetchurl);
    sleep 1;
    # close file
    close OUTFILE;
    }

