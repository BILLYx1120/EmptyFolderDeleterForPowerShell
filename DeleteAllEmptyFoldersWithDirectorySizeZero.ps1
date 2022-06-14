du64 -v -c > "folderData.csv"

# Create new empty array by @()
$Path = @()
$DirectorySize = @()
$FileCount = @()

$EmptyFolderCount = 0

# Create the txt file
#Out-File -FilePath .\selectedFolder.txt

Import-Csv -Path .\folderData.csv -Header "Path","CurrentFileCount","CurrentFileSize","FileCount","DirectoryCount","DirectorySize","DirectorySizeOnDisk" |`
	forEach-Object {
		$Path += $_."Path"
		$DirectorySize += $_."DirectorySize"
		$FileCount += $_."FileCount"
		#Write-Host "FileCount: " $FileCount
	}
#Write-Host "DirectorySize: " $DirectorySize

# The variable Path, DirectorySize and FileCount will be arrays
# Iterate through the array
#Write-Host "DirectoryCount: " $DirectorySize.Count
for ($i = 0; $i -lt $DirectorySize.Count; $i++) {
	<# Action that will repeat until the condition is met #>
	if ($DirectorySize[$i] -eq "0")
	{
		#Write-Host $Where
		#Write-Host "Path Name: " $Path[$Where]

		# Add up the empty folder counter
		$EmptyFolderCount += 1
		#Out-File -FilePath .\selectedFolder.txt -InputObject $Path[$i] -Append
		Remove-Item -Path $Path[$i] -Recurse
	}
}

Write-Host "There are" $EmptyFolderCount "empty folders and they are all removed!"