### This script is designed to take in a Genbank GBFF file and output a summary of all genes with associated GO codes.
### Takes one argument: Input file.
### Output will be a folder with the organism's name, filled with *.txt files, each corresponding to a gene.


use List::Util qw (max);
use List::Util qw (min);
use List::MoreUtils qw(uniq);

$GBFFFile = "$ARGV[0]";
chomp($GBFFFile);

open (SLURP, "<", "$GBFFFile");
@GBFFLines = <SLURP>;
close(SLURP);
chomp(@GBFFLines);

$Indicator = 0;

while ($Indicator == 0 && $Orgcount <= $#GBFFLines)
	{
	print "Checking for organism name.\n";
	if (index ($GBFFLines[$Orgcount], '/organism=') != -1) #Find the organism name (only once)
		{
		@DataSplit = split(/"/, $GBFFLines[$Orgcount]); #Split up line with organismname
		$OrganismName = "$DataSplit[1]";
		$Indicator = 1;
		}
	$Orgcount = $Orgcount + 1;
	}

system("mkdir \"$OrganismName\"");

for ($count = 0; $count <= $#GBFFLines; $count ++)
	{
	if (index ($GBFFLines[$count], '  gene  ') != -1) #Is this the start of a gene?
		{
		@DataSplit = split(/\s|\(|\)|\>|\<|\./, $GBFFLines[$count]); #Chops each gene entry up to extract the useful info
		my @GeneData;
		for ($SplitCount = 0; $SplitCount <= $#DataSplit; $SplitCount ++)
			{
			if ($DataSplit[$SplitCount] > 0) #Finds the chunks that are numbers (start and end)
				{
				#print "$DataSplit[$SplitCount]";
				push (@GeneData, "$DataSplit[$SplitCount]");
				}
			}
		
		$GeneStart = "$GeneData[0]";
		$GeneEnd = "$GeneData[1]";
		$GeneLength = $GeneEnd - $GeneStart;

		@DataSplit = split(/\"/, $GBFFLines[$count + 1]); #Splits next line 

		$GeneID = "$DataSplit[1]"; #Genes gene ID
		print "$GeneID : $GeneLength ($GeneStart <-> $GeneEnd)\n";
		
		my @GOCodes;
		
		$Indicator = 0;
		$GOcount = $count + 1;
		
		while ($Indicator != 1 && $GOcount <= $#GBFFLines)
			{
			#print "$count/$GOcount:";
			#print "\t$GBFFLines[$GOcount]\n";
			if (index ($GBFFLines[$GOcount], '  gene  ') != -1) #Interrupt at start of next gene
				{
				#print "Interrupting because: $GBFFLines[$GOcount]";
				$Indicator = 1;
				}
			if (index ($GBFFLines[$GOcount], "GO:") != -1) #Does this line contain a GO code?
				{
				#print "Line with a GO code: $GBFFLines[$GOcount]\n";
				@DataSplit = split(/\s|\"/, $GBFFLines[$GOcount]); #Split up the GO:-containing line
				for ($SplitCount = 0; $SplitCount <= $#DataSplit; $SplitCount ++)
					{
					if (index ($DataSplit[$SplitCount], "GO:") != -1) #Pull out the piece that's the actual code (formatting varies)
						{
						print "$DataSplit[$SplitCount]\n";
						push (@GOCodes, "$DataSplit[$SplitCount]");
						}
					}
				}
			$GOcount = $GOcount + 1;
			}
					my @GOList;
		
		@GOList = uniq @GOCodes;
		
		if ($#GOList >= 0)
			{
			open(GeneOUT, ">", "$OrganismName\/$GeneID.txt");
			print GeneOUT "$OrganismName\t$GeneID\t$GeneLength\n";
			#print "$OrganismName\t$GeneID\t$GeneLength\n";
			for ($R = 0; $R <= $#GOList; $R ++)
				{
				#print "$GOList[$R]\n";
				print GeneOUT "$GOList[$R]\n";
				}
			close(GeneOUT);
			
			}	
		}

	}