# https://stackoverflow.com/questions/19754171/how-to-create-symbolic-links-for-multiple-files-in-multiple-folders-using-comman
function createSymbolicLinks ($source, $destination, [switch]$recurse) {
    Get-ChildItem $source | % { 
        if($_.PSIsContainer -and $recurse) { 
            Get-ChildItem $_.FullName
        } else { 
            $_
        }
    } | ? { !$_.PSIsContainer } | % { 
        $destpath = $_.Fullname -replace [regex]::Escape($source), $destination
        if(!(Test-Path (Split-Path $destpath))) {
            #Create missing subfolders
            New-Item (Split-Path $destpath) -ItemType Directory -Force | Out-Null
        }
        cmd /c mklink $destpath $($_.FullName) | Out-Null
    }
}

#Create symbolic links in c:\folderC for all files in d:\folderD(with recursive search)
createSymbolicLinks -source F:\Users\Joker\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations -destination C:\Users\IEUser\Desktop\Jumplists -recurse
createSymbolicLinks -source F:\Users\Joker\AppData\Roaming\Microsoft\Windows\Recent\CustomDestinations -destination C:\Users\IEUser\Desktop\Jumplists -recurse


