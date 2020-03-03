use LWP::Simple;

#Fetch a set of gene IDs from NCBI and display their corresponding accession codes

#query of gene IDs (gi)
$gi_list = '24475906,224465210,50978625,9507198';

#assemble the URL (define the urls in the API for each ID and determine)
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';
$url = $base . "efetch.fcgi?db=nucleotide&id=$gi_list;

#&rettype=acc";

#post the URL query
$output = get($url);

print "$output";
