use LWP::Simple;

$output = get(https://eutils.ncbi.nlm.nih.gov/entrez/eutils/ . efetch.fcgi?db=nucleotide&id=24475906&rettype=acc);
