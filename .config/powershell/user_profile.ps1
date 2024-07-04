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

# Remove built-in aliases
Remove-Alias gp -Force -ErrorAction SilentlyContinue
Remove-Alias gc -Force -ErrorAction SilentlyContinue

# Alias
Set-Alias ll ls
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

function g {
    git $args
  }

function ga {
    git add $args
}

function gaa {
	git add --all $args
}

function gb {
	git branch $args
}

function gc {
    git commit -m $args
}

function gf {
    git fetch $args
  }

function gpsup {
	$CurrentBranch = Get-Git-CurrentBranch

	git push --set-upstream origin $CurrentBranch
}

function gcb {
    git checkout -b $args
  }

function gp {
  git push $args
}

function gr {
	git remote $args
}

function gra {
	git remote add $args
}

function e {
 explorer $args
}

function q {
    exit
  }
