# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
	bash-completion2
	bats
    battery
    coreutils
    dockutil
    erlang
    elixir
    ffmpeg
    fasd
    gifsicle
    git
	git-flow
    hub
    httpie
    jq				# https://stedolan.github.io/jq/tutorial/
    mackup
	nmap
    peco
    psgrep
	pstree
	reattach-to-user-namespace
    ssh-copy-id
	tmux
    tree
    vim
	zsh
	zsh-completions
)

# Don't install these packages
# imagemagick
# python
# shellcheck
# svn


brew install "${apps[@]}"


# GNU Tools
# https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
brew install binutils
brew install diffutils
brew install ed --default-names
brew install findutils --with-default-names
brew install gawk
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls
brew install grep --with-default-names
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget

brew install file-formula
brew install git
brew install less
brew install openssh
brew install rsync
brew install svn
brew install unzip


# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
