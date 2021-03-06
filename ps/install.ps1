# install modules
& {
    $color = [ConsoleColor]::Green
    # install PsGet
    Write-Host "installing PsGet" -ForegroundColor $color
    (new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

    # posh-git
    Install-Module Posh-Git
}
