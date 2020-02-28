Get-ChildItem */* | 
	where {$_.name -eq "build.gradle"} | 
	foreach { 
		cd $_.DirectoryName; 
		echo "switched to project: "$_.DirectoryName; 
		.\gradlew.bat build jar; 
		$(Get-ChildItem build\libs\ | Copy-Item -Destination ..\.builds -Recurse; echo "Copying item: $(Get-ChildItem build\libs\) to .builds/"); 
		cd ..
	}