# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReversedHistory 'Ctrl+r'

# Prompt
Import-Module posh-git
oh-my-posh --init --shell pwsh --config "C:\\Users\Administrator\.config\powershell\maxim.omp.json" | Invoke-Expression

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias touch New-Item
Set-Alias c clear
Set-Alias y yarn
Set-Alias v nvim

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function ga {
    git add .
}

function gcom {
    param (
        [string]$message
    )
    git commit -m $message
}

function gpush {
  git push
}

function e {
 exit 
}

function ex {
	param (
		[string]$message
		)
	explorer $message
}
