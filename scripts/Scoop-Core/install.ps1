Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb 'https://github.moeyy.xyz/https://raw.githubusercontent.com/scoopinstaller/install/master/install.ps1' | iex
scoop install gsudo git scoop-search
scoop config SCOOP_REPO 'https://github.com/Ash258/Scoop-Core'
scoop bucket add 'Base'
scoop bucket add Scoop-Apps 'https://github.com/ACooper81/scoop-apps'
[Environment]::SetEnvironmentVariable('SCOOP', "$env:UserProfile\scoop", 'User')
scoop update
