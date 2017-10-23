##This script takes a .txt file containing GO code information and compares the codes to a reference list.
##Two inputs are required: a reference list in plain-text format, and a gene file being checked.
##It will then report findings to STDOUT, with a 1 showing a match and a 0 showing no match.
##If there is a match, the name/designation supplied with the GO code will also be output.
##If a gene matches to more than one GO, all will be shown.
##When processing outputs of GBFFConvert or AnnotationConverter, the script must be executed on all text files in the folder.

use List::MoreUtils qw(uniq);

$ReferenceFile = "$ARGV[0]";
$ScanFile = "$ARGV[1]";

open (SLURP1, "<", "$ScanFile");
@ScanLines = <SLURP1>;
close(SLURP1);
chomp(@ScanLines);

open (SLURP2, "<", "$ReferenceFile");
@RefLines = <SLURP2>;
close(SLURP2);
chomp(@ScanLines);

$Header = "$ScanLines[0]";
my @FunctArray;
my $OverallRefCheck = "0";

for ($Scan = 1; $Scan <= $#ScanLines; $Scan ++)
{	

my $RefCheck = "0";
my $RefFunct;

	for ($Ref = 0; $Ref <= $#RefLines; $Ref ++)
	{
	@SplitRef = split(/\t/, $RefLines[$Ref]); #Chops up GO-related lines into pieces.
	chomp(@SplitRef);
	
		if ("$ScanLines[$Scan]" eq "$SplitRef[0]")
			{
			#print "$ScanLines[$Scan] == $SplitRef[0]\n";
			$RefCheck = "1";
			$OverallRefCheck = "1";
    		push (@FunctArray, "$SplitRef[1]");
    		$RefFunct = "$SplitRef[1]";
			}						
	}
	
	#print "$ScanLines[$Scan]\t$RefCheck\t$RefFunct\n"
}

#print "\n";	
#print join (";", @FunctArray);

$Funct = join ("\t", uniq @FunctArray);
$HeaderOut = "$Header\t$OverallRefCheck\t$Funct";

print "$HeaderOut\n";