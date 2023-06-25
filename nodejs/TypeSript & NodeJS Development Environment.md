# TypeSript & NodeJS Development Environment

# NodeJS, Expo, NPM & Yarn

```bash
# NodeJS
	sudo apt install nodejs
	node --version

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

# NVM
	sudo apt install build-essential -y
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Check NVM Version
	nvm --version

# Lista all available versions
	nvm ls-remote node

# Install selected version
	nvm install v8.3.0

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

```

# Iniciar Repo GIT

```bash
git init
Add .gitignore
```

# Iniciar projeto com Yarn

```bash
yarn init -y
```

# Modulos de Desenvolvimento em TypeScript

```bash
yarn add -D typescript
yarn add @types/node
```

# Diretórios do Projeto

```jsx
src/
src/util/module-alias.ts
test/

```

# Configurações do tsconfig.json

```json
{
  "compilerOptions": {
    "target": "es2019",
    "moduleResolution": "node",
    "module": "commonjs",
    "lib": ["es2019"],
    "sourceMap": true,
    "outDir": "dist",
    "strict": true,
    "noImplicitAny": true,
    "strictNullChecks": true,
    "strictFunctionTypes": true,
    "noImplicitThis": true,
    "resolveJsonModule": true,
    "alwaysStrict": true,
    "removeComments": true,
    "noImplicitReturns": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "baseUrl": ".",
    "paths": {
      "@src/*": ["./src/*"],
      "@test/*": ["./test/*"]
    },
    "rootDirs": [
      "./src",
      "./test"
    ],
    "experimentalDecorators": true,
    "emitDecoratorMetadata": true
  },
  "include": [
    "./src/**/*.ts",
    "./test/**/*.ts"
  ],
  "exclude": [
    "./node_modules/*",
    "dist"
  ]
}
```

# Configurando paths com Alias

```json
yarn add module-alias
yarn add @types/module-alias -D
```

# Configurações module-alias.js

```jsx
import * as path from 'path';
import moduleAlias from 'module-alias';

const files = path.resolve(__dirname, '../../');

moduleAlias.addAliases({
  '@src': path.join(files, 'src'),
  '@test': path.join(files, 'test'),
});
```

# Configuração dos scripts yarn

```json
"scripts": {
    "build": "tsc",
    "start": "yarn build && node dist/index.js"
  },
```

# Instalação do ESLint

```bash
yarn add -D eslint @typescript-eslint/eslint-plugin @typescript-eslint/parser

new file > root > .eslintrc
```

# Configuração do ESLint

```json
// arquivo .eslintrc
{
  "root": true,
  "parser": "@typescript-eslint/parser",
  "plugins": [
    "@typescript-eslint"
  ],
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/eslint-recommended",
    "plugin:@typescript-eslint/recommended"
  ]
}
```

```json
// arquivo package.json
"scripts": {
    "lint": "eslint ./src ./test --ext .ts",
    "lint:fix": "eslint ./src ./test --ext .ts --fix"
  },
```

# Configurando Script de Desenvolvimento

```json
yarn add -D ts-node-dev"scripts": {
   "dev": "ts-node-dev 'src/index.ts' " ,
},
```

# Setup do Jest

```json
yarn add -D jest ts-jest @types/jest
```

# Configuração do Jest

```jsx
//global

const { resolve } = require('path');
const root = resolve(__dirname);
module.exports = {
  rootDir: root,
  displayName: 'root-tests',
  testMatch: ['<rootDir>/src/**/*.test.ts'],
  testEnvironment: 'node',
  clearMocks: true,
  preset: 'ts-jest',
  moduleNameMapper: {
    '@src/(.*)': '<rootDir>/src/$1',
    '@test/(.*)': '<rootDir>/test/$1',
  },
};

// test/jest.config.js
const { resolve } = require('path');
const root = resolve(__dirname, '..');
const rootConfig = require(`${root}/jest.config.js`);

module.exports = {...rootConfig, ...{
  rootDir: root,
  displayName: "end2end-tests",
  setupFilesAfterEnv: ["<rootDir>/test/jest-setup.ts"],
  testMatch: ["<rootDir>/test/**/*.test.ts"],
}}

// criar arquivo jest-setup.ts dentro da pasta test
```

# Instalar SuperTest

```jsx
yarn add -D supertest @types/supertest
```

# Script Test

```jsx
"test:func": "jest --projects ./test --runInBand"
// --runInBand executa os tests em serie e nao em paralelo
```

# Configurando Prettier

```json
yarn add prettier -D

.prettierrc

{
  "trailingComma": "es5",
  "tabWidth": 2,
  "semi": true,
  "singleQuote": true
}

package.json

"style:check": "prettier --check src/**/*.ts test/**/*.ts",
"style:fix": "prettier --write src/**/*.ts test/**/*.ts",

```