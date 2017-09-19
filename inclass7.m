%Inclass assignment 7. 
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% A. What human chromosome is it located on?
%--> Chromosome 13

% B. How many exons does it have?
%--> 3 Exons 

% C. What is the precise position of its stop codon in the genome?
%--> Chr13: 27,969,006

% D. Identify at least one difference in sequence between human and mouse
% CDX2.
%--> Mouse Cdx2 has a deletion at intron 1.

% E. In which human tissues is it expressed most abundantly?
%--> Colon transverse 

%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2.
%--> NM_001265.4

% B. Use MATLAB to read the genbank information corresponding to that
% accession number. 
genebank_dat = genbankread('NM_001265.gb');


% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?
% --> using genebank_dat.Features; I can see that the CDS start from 363 to 1304. 
% --> Sequence before the start codon is called 5' untranslated region
% (UTR); sequence after the stop codon is called the 3' UTR. 

% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 
protein_dat = getgenpept(genebank_dat.CDS.protein_id);
%--> amino acid sequence 190 to 242 is the homeobox domain. 