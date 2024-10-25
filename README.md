# Quy’s dotfiles

For the next time I need to set up my Mac: Steal from this instead: <https://github.com/alrra/dotfiles/blob/main/src/os/preferences/macos/trackpad.sh>. It's well maintained and I like the structure better.

## TODO

- Move dotfiles to a folder. The bootstrap file will then copy all files in that folder over
- Make the bootstrap.sh file work.
- Add suggestion / workflow to run the bash scrips (e.g., configure_apps.sh)
- Configure a way to dismiss notifications with keyboard shortcut
- Syncing all the config back to this repo when it's time to backup configs from the current computer

## Installation

```bash
# Install homebrew and git, and clone this repo

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/quyvu/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/quyvu/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git

mkdir -p ~/code && cd "$_"
git clone https://github.com/xquyvu/dotfiles.git && cd dotfiles && source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
./.macos
```

### Installling apps via Brew

```bash
./install_apps.sh
```

Some of the functionality of these dotfiles depends on formulae installed by `install_apps.sh`

## Handy commands

```bash
# Get the bundle ID of an app, e.g., VSCode
osascript -e 'id of app "Visual Studio Code"'
```

## Author

[Mathias Bynens](https://mathiasbynens.be/)

## Thanks to…

- @ptb and [his _macOS Setup_ repository](https://github.com/ptb/mac-setup)
- [Ben Alman](http://benalman.com/) and his [dotfiles repository](https://github.com/cowboy/dotfiles)
- [Cătălin Mariș](https://github.com/alrra) and his [dotfiles repository](https://github.com/alrra/dotfiles)
- [Gianni Chiappetta](https://butt.zone/) for sharing his [amazing collection of dotfiles](https://github.com/gf3/dotfiles)
- [Jan Moesen](http://jan.moesen.nu/) and his [ancient `.bash_profile`](https://gist.github.com/1156154) + [shiny _tilde_ repository](https://github.com/janmoesen/tilde)
- Lauri ‘Lri’ Ranta for sharing [loads of hidden preferences](https://web.archive.org/web/20161104144204/http://osxnotes.net/defaults.html)
- [Matijs Brinkhuis](https://matijs.brinkhu.is/) and his [dotfiles repository](https://github.com/matijs/dotfiles)
- [Nicolas Gallagher](http://nicolasgallagher.com/) and his [dotfiles repository](https://github.com/necolas/dotfiles)
- [Sindre Sorhus](https://sindresorhus.com/)
- [Tom Ryder](https://sanctum.geek.nz/) and his [dotfiles repository](https://sanctum.geek.nz/cgit/dotfiles.git/about)
- [Kevin Suttle](http://kevinsuttle.com/) and his [dotfiles repository](https://github.com/kevinSuttle/dotfiles) and [macOS-Defaults project](https://github.com/kevinSuttle/macOS-Defaults), which aims to provide better documentation for [`~/.macos`](https://mths.be/macos)
- [Haralan Dobrev](https://hkdobrev.com/)
