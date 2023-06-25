## Fonts

## CLIs

### AWS

```bash
```

### Cloudflare

```bash
```

## Terminal



## Apps

- fonts
	- Meslo NG
- clis
	- aws
	- cloudflare
	- gh 
		- gh extensions
	- railway
	- terraform
- apps
	- git kraken
	- table plus
	- obsidian
	- ledger
	- vs code
		- vs code extensions
	- mongo compass
	- termius
	- alacritty
	- Browser Dev and Exntesions
		- firefox dev
		-  edge dev
		-  chrome dev
		- Bitwarden
		- React Developer Tools
		- JSON Formatter
		- Lighthouse
		- Zendesk Garden Inspect 
	- edge
	- any desk
	- obs
	- android studio
	- vlc
	- rpi imager
	- app image launcher
	- disk usage analyzer
	- tweaks
	- redis insight
	- warp cloudflare
	- thunderbird
	- sudo apt install clamtk
	- kvm
	- virt-manager
	- Warp Terminal
	- asdf
	- node
	- python
	- 
- terminal
	- Fish
	- Oh My Fish
	- Starship.rs

- docker
- cloudflared
- portainer-agent

## Virtual Machines

```bash
# Install Virtual Manager
	sudo apt-get install virt-manager

# Install QEMU
	sudo apt-get install  qemu virt-manager ebtables

# Enable Daemon libvirtd
	sudo systemctl enable libvirtd

# Start livirtd process
	sudo systemctl start libvirtd

# Check libvirtd status
	sudo systemctl status libvirtd

# Set libvirt permission for user
sudo usermod -G libvirt -a 'username'
```


## Setup GitHub SSH
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

sudo apt-get install xclip

xclip -sel clip < ~/.ssh/id_rsa.pub

https://github.com/settings/ssh/new
```

code --list-extensions | xargs -L 1 echo code --install-extension
```
code --install-extension achaq.vercel-theme
code --install-extension antfu.browse-lite
code --install-extension antfu.iconify
code --install-extension antfu.vite
code --install-extension apollographql.vscode-apollo
code --install-extension AykutSarac.jsoncrack-vscode
code --install-extension bierner.color-info
code --install-extension bierner.github-markdown-preview
code --install-extension bierner.markdown-checkbox
code --install-extension bierner.markdown-emoji
code --install-extension bierner.markdown-footnotes
code --install-extension bierner.markdown-mermaid
code --install-extension bierner.markdown-preview-github-styles
code --install-extension bierner.markdown-yaml-preamble
code --install-extension bradlc.vscode-tailwindcss
code --install-extension burkeholland.simple-react-snippets
code --install-extension dbaeumer.vscode-eslint
code --install-extension dotenv.dotenv-vscode
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension GitHub.copilot-labs
code --install-extension GitHub.copilot-nightly
code --install-extension GitHub.remotehub
code --install-extension github.vscode-github-actions
code --install-extension GitHub.vscode-pull-request-github
code --install-extension golang.go
code --install-extension GraphQL.vscode-graphql
code --install-extension GraphQL.vscode-graphql-execution
code --install-extension GraphQL.vscode-graphql-syntax
code --install-extension hashicorp.terraform
code --install-extension mongodb.mongodb-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-ossdata.vscode-postgresql
code --install-extension ms-python.isort
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.js-debug-nightly
code --install-extension ms-vscode.live-server
code --install-extension ms-vscode.remote-explorer
code --install-extension ms-vscode.remote-repositories
code --install-extension ms-vscode.remote-server
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension msjsdiag.vscode-react-native
code --install-extension PKief.material-icon-theme
code --install-extension pranaygp.vscode-css-peek
code --install-extension Prisma.prisma
code --install-extension redhat.vscode-yaml
code --install-extension rust-lang.rust-analyzer
code --install-extension statelyai.stately-vscode
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension styled-components.vscode-styled-components
code --install-extension vintharas.learn-vim
code --install-extension WallabyJs.console-ninja
code --install-extension WallabyJs.dingo-vscode
code --install-extension WallabyJs.quokka-vscode
code --install-extension WallabyJs.wallaby-vscode
```

## GH Extensions
gh dash              dlvhdr/gh-dash                v3.7.6
gh eco               thatvegandev/gh-eco           v0.1.3
gh f                 gennaro-tedesco/gh-f          72ae34f4
gh markdown-preview  yusukebe/gh-markdown-preview  a0e1709c
gh notify            meiji163/gh-notify            4f6ca16b
gh poi               seachicken/gh-poi             v0.9.1
gh resto             abdfnx/gh-resto               dfff977e
gh s                 gennaro-tedesco/gh-s          v0.0.8

## asdf

```bash
https://asdf-vm.com/
```

## VIM

```bash
NeoVim
https://github.com/neovim/neovim/wiki/Installing-Neovim

LunarVIm
https://www.lunarvim.org/#opinionated
```


## Setup fan with Ubuntu

```bash
sudo apt update &&  sudo apt upgrade
```

```bash
cd ~
mkdir scripts
cd scripts

git clone https://gist.github.com/da49873744fa912665daf87f1cf1b382.git
mv da49873744fa912665daf87f1cf1b382 temperature

cd temperature

sudo chmod +x argon1.sh
./argon1.sh

cd scripts/temperature

sudo chmod +x temperature.sh
./temperature.sh

cd ~

sudo reboot
```

add alias to .bashrc

```bash
sudo nano ~/.bashrc
```

```bash
alias temp="$HOME/scripts/temperature/temperature.sh"
```

### Config fan speed

55 C - 10%
60 C - 55%
65 C - 100%

```bash
argonone-config
```


## railway

```bash
curl -fsSL https://railway.app/install.sh | sh
```

```bash
railway link 805a036c-93c2-4346-9a74-c57a33ddf4eb





If you want to setup automatic just follow the steps bellow

Clone dot files from repository

```bash
git clone git@github.com:augustobritodev/dotfiles.git
```

Run init.sh to start

```bash
sudo  https://www.warp.dev/
```



## Alacritty https://alacritty.org/

```bash
sudo add-apt-repository ppa:aslatter/ppa
```

```bash
sudo apt-get update && sudo apt install alacritty
```

Set Alacritty as default terminal

```bash
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50
```

```bash
sudo update-alternatives --config x-terminal-emulator
```

If you want remove Alacritty alternative this is the command:

```bash
sudo update-alternatives --remove "x-terminal-emulator" "/usr/local/bin/alacritty"
```