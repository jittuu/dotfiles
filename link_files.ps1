function LinkProfileFiles() {
    $profile_folder = Resolve-Path ~/Documents/WindowsPowershell
    Get-ChildItem .\ps\WindowsPowerShell\ | % {
        $name = $_.Name
        $target = Resolve-Path ps\WindowsPowerShell\$name
        & cmd /c mklink "$profile_folder\$name" $target
    }
}

function LinkVimFiles() {
  $vimrc = Resolve-Path .\vimrc
  &cmd /c mklink "$HOME\_vimrc" $vimrc

  $vimfiles = Resolve-Path .\vim
  &cmd /c mklink /d "$HOME\vimfiles" $vimfiles
}

LinkVimFiles

LinkProfileFiles