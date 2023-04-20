# Use this to rename files recursively in Powershell:

$path_obj = Read-Host "Enter base filepath (WARNING: ALL files in the base filepath may be edited!)"
$find_str = Read-Host "Enter search parameter"
$replace_str = Read-Host "Enter replacement parameter"

cd $path_obj

Get-ChildItem -File -Recurse | % { Rename-Item -Path $_.PSPath -NewName $_.Name.replace($find_str, $replace_str) }

# Use this to change folder names:

Get-ChildItem -Directory -Recurse -Filter *$find_str* | ForEach-Object -Process {Rename-item $_.fullname -NewName ($_.fullname -replace $find_str, $replace_str) }

# Would Like to mix them together but for now use them separately.

# Need to change all files before folder names will change?