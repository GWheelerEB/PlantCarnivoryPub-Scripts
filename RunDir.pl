###This runs a command on all files in a directory, substituting in the names of each file in place of 'XFILEX'
###Syntax: Arg0 = path to directory; Arg1 = command. XFILEX should be inserted into argument 1 exactly where the filenames should be inserted.

$Command = "$ARGV[0] ";
$Dir = $ARGV[1];

opendir my $Directory, "$Dir" or die "Cannot open directory: $Dir $1";
my @FileList = readdir $Directory;
closedir $Directory;

@CommandParts = split(/XFILEX/, $Command);

for ($count = 0; $count <= $#FileList; $count ++)
	{
	#print "File $count of $#FileList\n";
	$SubmitCommand = join ("\"$Dir$FileList[$count]\"", @CommandParts);
	print `$SubmitCommand`;
	#print "$SubmitCommand\n";
	}
	
