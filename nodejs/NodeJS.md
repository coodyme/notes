# NodeJS

## NPM and NVM

## Yarn

```bash
# NVM
	sudo apt install build-essential -y
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.38.0/install.sh | bash

# Check NVM Version
	nvm --version

# List all available versions
	nvm ls-remote node

# Install selected version
	nvm install v16.4.2

# Install last version
	nmv install node

# List installed version
	nvm ls

# Set current version do node alias
	nvm use node

# Create version alias
	nvm alias alias-name 8.5.0
	nvm use alias-name

# Clean npm cache
	sudo npm cache clean -f

# NPM
	sudo apt install npm
	npm --version

# YARN

	# Debian package repository
		curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
		echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
	
	# Update and Install Yarn (Using NVM)
		sudo apt update && sudo apt install --no-install-recommends yarn
	
	# Add this to your profile
		# Yarn Path
		export PATH="$PATH:/opt/yarn-[version]/bin"
```