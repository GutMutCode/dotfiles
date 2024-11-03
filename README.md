# MacOS Configs from Scratch

# Install browser

[Arc](https://arc.net/)

# Install package manager

[Homebrew](https://brew.sh)

# Install graphic terminal

[Kitty](https://sw.kovidgoyal.net/kitty/binary/)

# Install version control system

```sh
brew install git
```

# Install IDE

```sh
brew install neovim
```

## Install nerd font

[Maple-NF](https://github.com/subframe7536/maple-font/releases)

## [AstroNvim](https://docs.astronvim.com/)

#### tree-sitter

to enable auto installation

- build by Rust

[RustUp](https://rustup.rs/)

#### ripgrep

for fast searching

```sh
brew install ripgrep
```

#### lazygit

for beatiful git ui

```sh
brew install lazygit
```

#### gdu

for disk usage anlyzer

```sh
brew install gdu
```

#### bottom

process viewer

```sh
brew install bottom
```

#### Python

Pyenv

```sh
brew install pyenv
```

insert the following code in ~/.zshrc

```sh
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
```

```sh
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
```

Pyenv-virtualenv

```sh
brew install pyenv-virtualenv
# auto activation
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
```

#### Node

```sh
brew install nodejs
```

#### Go

https://go.dev/doc/install

#### Rust

Add rust-analyzer for neovim lsp

```sh
rustup component add rust-analyzer
```

# Unzip

```sh
tar -xvzf *.gz
```

# Beatiful Shell

Starship

```sh
brew install starship
```

# Tiling Window Manager

## [Yabai](https://github.com/koekeishiya/yabai/wiki#installation-requirements)

You must **notice** the following link.

```sh
brew install koekeishiya/formulae/yabai
```

## SKHD

To configure custom key mappings

```sh
brew install koekeishiya/formulae/skhd
```

# Esc Keybinding to convert to English

Hammerspoon

```sh
brew install hammerspoon
```

Config

```lua
-- check current input source by the following code
-- print(hs.keycodes.currentSourceID())

-- local inputEnglish = "com.apple.keylayout.ABC"
local inputEnglish = "com.apple.keylayout.USExtended"
local esc_bind

function convert_to_eng_with_esc()
	local inputSource = hs.keycodes.currentSourceID()
	if not (inputSource == inputEnglish) then
		hs.eventtap.keyStroke({}, 'right')
		hs.keycodes.currentSourceID(inputEnglish)
	end
	esc_bind:disable()
	hs.eventtap.keyStroke({}, 'escape')
	esc_bind:enable()
end

esc_bind = hs.hotkey.new({}, 'escape', convert_to_eng_with_esc):enable()
```

# `ls` replacement

- [eza](https://github.com/eza-community/eza)

```sh
brew install eza
```

- Config

```sh
alias ls="eza --icons"
alias ll="eza -l --icons"
```

# Shell Plugins

## Zsh

- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

- [zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode)

```sh
git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH_CUSTOM/plugins/zsh-vi-mode
```

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

```sh
brew install zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

```sh
brew install zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

- autojump

```wh
brew install autojump
```

# Note Taking

## [Emacs-plus](https://github.com/d12frosted/homebrew-emacs-plus?tab=readme-ov-file#installing-from-feature-branch)

```sh
brew tap d12frosted/emacs-plus
brew install emacs-plus@29 --with-native-comp
osascript -e 'tell application "Finder" to make alias file to posix file "/opt/homebrew/opt/emacs-plus@29/Emacs.app" at POSIX file "/Applications" with properties {name:"Emacs.app"}'
```

## [Doom Emacs](https://github.com/doomemacs/doomemacs/blob/master/docs/getting_started.org#on-macos)

```sh
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
```

#### CMake

to build emacs packages

```sh
brew install cmake
```

# Terminal Session Manager

## tmux

Install

```sh
brew install tmux
```

[TPM](https://github.com/tmux-plugins/tpm)

# Battery Limiter

```sh
curl -s https://raw.githubusercontent.com/actuallymentor/battery/main/setup.sh | bash
```

# Remote Development

## Docker

For containered development

```sh
brew install docker
```

## [DevPod](https://devpod.sh/docs/getting-started/install#optional-install-devpod-cli)

To create reproducible developer environment

- No vendor lock-in
