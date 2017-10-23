#This script extracts GO information from Blast2GO annotation files.
#These files are plain-text, and can be obtained by selecting File->Export->Export Mapping Results in B2G.
#The script takes two arguments: 1 - mapping file, and 2 - An organism name.
#Its output will be a folder, named with the name of the organism, and filled with .TXT files.
#Each file corresponds to one gene for which GO codes were found.

use List::MoreUtils qw(uniq);

$OrganismName = "$ARGV[1]";

$AnnotationFile = "$ARGV[0]";
chomp($AnnotationFile);

open (SLURP, "<", "$AnnotationFile");
@AnnotationLines = <SLURP>;
close(SLURP);
chomp(@AnnotationLines);

@UniqueLines = uniq @AnnotationLines;

system("mkdir \"$OrganismName\"");

my @Names;

for ($count = 0; $count <= $#UniqueLines; $count ++)
	{
		@SplitEntry = split(/\t/, $UniqueLines[$count]);
		push (@Names, "$SplitEntry[0]");
	}
	
@UniqueNames = uniq @Names;

print join ("\n", @UniqueNames);

for ($X = 0; $X <= $#UniqueNames; $X ++)
	{
	my @GOCodes;
	for ($count = 0; $count <= $#UniqueLines; $count ++)
		{
			@SplitEntry = split(/\t/, $UniqueLines[$count]);
			if ("$SplitEntry[0]" eq "$UniqueNames[$X]")
				{
				@SplitGO = split(', ', $SplitEntry[5]);
				push (@GOCodes, @SplitGO);
				$GeneLength = "$SplitEntry[1]";
				}
		}
		
	@GOList = uniq @GOCodes;
	
	open(GeneOUT, ">", "$OrganismName\/$UniqueNames[$X].txt");
			
	print GeneOUT "$OrganismName\t$UniqueNames[$X]\t$GeneLength\n";
	
	for ($Y = 0; $Y <= $#GOList; $Y ++)
		{
			print GeneOUT "$GOList[$Y]\n";
		}
		
	close(GeneOUT);

	}