Get-ChildItem */* | 
	where {$_.name -eq "README.md"} | 
	foreach { 
		cd $_.DirectoryName; 
		echo "switched to project: "$_.DirectoryName; 
		git pull > git.out;
		If (Get-Content git.out | %{$_ -match "Already up to date."}) {
			echo "Already up to date."
			rm git.out
		}
		cd ..
	}