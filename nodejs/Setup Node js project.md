# Setup Node.js project


# Create Repository

```bash
# Git
git init
Add .gitignore

# or GitHub
gh repo create "repo-name" --private -d "description"
```

# Package Manager

```bash
# Yarn
yarn init -y

# or Npm
npm init -y
```

# Install Dependencies

```bash
# TypeScript and Definitions for Node
yarn add -D typescript
yarn add -D @types/node
yarn add -D ts-node-dev

# ESLint
yarn add -D eslint
yarn add -D eslint-plugin-import
yarn add -D @typescript-eslint/parser
yarn add -D eslint-plugin-prettier
yarn add -D eslint-config-prettier
yarn add -D eslint-import-resolver-typescript
yarn add -D tsconfig-paths

# dotnev
yarn add dotenv-safe
yarn add -D @types/dotenv-safe

# Jest
yarn add -D jest
yarn add -D ts-jest
yarn add -D @types/jest

# Prettier
yarn add prettier -D
```

# Setup tsconfig.json

```bash
yarn tsc --init
```

```json
{
  "compilerOptions": {
    /* Basic Options */
    "target": "es6",
    "module": "commonjs",
    "lib": ["ESNext"],
    "allowJs": true,
    "outDir": "dist",
    "rootDir": ".",
    "removeComments": true,

    /* Strict Type-Checking Options */
    "strict": true,
    "noImplicitAny": true,
    "strictNullChecks": true,
    "strictFunctionTypes": true,
    "alwaysStrict": true,

    /* Module Resolution Options */
    "moduleResolution": "node",
    "baseUrl": ".",
    "paths": {
      "@src/*": ["src/*"]
    },
    "esModuleInterop": true,
    "resolveJsonModule": true,

    /* Experimental Options */
    "experimentalDecorators": true,
    "emitDecoratorMetadata": true,

    /* Advanced Options */
    "skipLibCheck": true,
    "forceConsistentCasingInFileNames": true,
    "sourceMap": true,
    "noImplicitThis": true,
    "noImplicitReturns": true,
    "allowSyntheticDefaultImports": true,
  },
  "exclude": ["node_modules", "dist", "coverage"],
  "include": ["src"]
}
```

# Create Directories and Files

```jsx
mkdir src
mkdir test

cd src

mkdir controllers core models schemas middlewares data routes services util config

touch .env
touch .env.example
```

# Add .gitignore file

```bash
# Bundle
dst/
dist/*
dist
dist/

# Documentation
docs/
docs/*
docs

# Logs
logs/
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*

# Diagnostic reports (https://nodejs.org/api/report.html)
report.[0-9]*.[0-9]*.[0-9]*.[0-9]*.json

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Compiled binary addons (https://nodejs.org/api/addons.html)
build/Release

# Dependency directories
node_modules/
jspm_packages/

# TypeScript cache
*.tsbuildinfo

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env
.env.test

# Stores VSCode versions used for testing VSCode extensions
.vscode-test

# yarn v2
.yarn/cache
.yarn/unplugged
.yarn/build-state.yml
.yarn/install-state.gz
.pnp.*

### JetBrains ###
# Covers JetBrains IDEs: IntelliJ, RubyMine, PhpStorm, AppCode, PyCharm, CLion, Android Studio and Webstorm
# Reference: https://intellij-support.jetbrains.com/hc/en-us/articles/206544839

# User-specific stuff:
.idea/workspace.xml
.idea/tasks.xml
.idea/dictionaries
.idea/vcs.xml
.idea/jsLibraryMappings.xml

# Sensitive or high-churn files:
.idea/dataSources.ids
.idea/dataSources.xml
.idea/dataSources.local.xml
.idea/sqlDataSources.xml
.idea/dynamic.xml
.idea/uiDesigner.xml

# Gradle:
.idea/gradle.xml
.idea/libraries

# Mongo Explorer plugin:
.idea/mongoSettings.xml

## File-based project format:
*.iws

## Plugin-specific files:

# IntelliJ
/out/

# mpeltonen/sbt-idea plugin
.idea_modules/

# JIRA plugin
atlassian-ide-plugin.xml

# Crashlytics plugin (for Android Studio and IntelliJ)
com_crashlytics_export_strings.xml
crashlytics.properties
crashlytics-build.properties
fabric.properties

### JetBrains Patch ###
# Comment Reason: https://github.com/joeblau/gitignore.io/issues/186#issuecomment-215987721

# *.iml
# modules.xml
# .idea/misc.xml 
# *.ipr
```

# Scripts package.json

```json
"scripts": {
    "build": "tsc",
    "start:dev": "ts-node-dev -r tsconfig-paths/register --respawn --transpile-only --ignore-watch node_modules --no-notify src/core/server.ts ",
    "start:prod": "NODE_ENV=production node -r tsconfig-paths/register dist/src/core/server.js",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage",
    "lint": "eslint ./src ./test --ext .ts",
    "lint:fix": "eslint ./src ./test --ext .ts --fix",
    "style": "prettier --check 'src/**/*.ts' 'test/**/*.ts'",
    "style:fix": "prettier --write 'src/**/*.ts' 'test/**/*.ts'"
  },
```

# Setup .eslintrc

```json
yarn eslint --init
```

```bash

# ✔ How would you like to use ESLint? · style
# ✔ What type of modules does your project use? · esm
# ✔ Which framework does your project use? · none
# ✔ Does your project use TypeScript? · No / Yes
# ✔ Where does your code run? · node
# ✔ How would you like to define a style for your project? · guide
# ✔ Which style guide do you want to follow? · airbnb
# ✔ What format do you want your config file to be in? · JSON

# Copy recommended dependencies and install with yarn
```

```json
{
    "env": {
        "es2021": true,
        "node": true,
        "jest": true,
    },
    "extends": [
        "eslint:recommended",
        "plugin:@typescript-eslint/recommended",
        "airbnb-base",
        "plugin:prettier/recommended",
        "plugin:import/errors",
        "plugin:import/warnings",
        "plugin:import/typescript"
    ],
    "parser": "@typescript-eslint/parser",
    "parserOptions": {
        "ecmaVersion": 12,
        "sourceType": "module"
    },
    "plugins": [
        "@typescript-eslint",
        "prettier",
        "import"
    ],
    "rules": {
        "prettier/prettier": "error",
        "import/extensions": "off",
        "import/no-unresolved": "error",
        "no-console": "off",
        "import/order": [
            "error",
            {
                "newlines-between": "never",
                "groups": [
                    ["builtin", "external"],
                    ["internal", "parent", "sibling", "index"]
                ]
            }
        ]
    },
    "settings": {
        "import/parsers": {
            "@typescript-eslint/parser": [".ts"]
        },
        "import/resolver": {
            "typescript": {
                "alwaysTryTypes": true,
                "project": "./tsconfig.json"
            }
        }
    }
}
```

# Setup just.config.js

```jsx
module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  coverageDirectory: 'coverage',
  collectCoverageFrom: ['src/**/*.{js,ts}'],
  coverageThreshold: {
    global: {
      branches: 0,
      functions: 0,
      lines: 0,
      statements: 0,
    },
  },
  moduleNameMapper: {
    'src/(.*)': '<rootDir>/src/$1',
  },
  moduleDirectories: ['node_modules', 'src'],
  testPathIgnorePatterns: ['<rootDir>/dist/', '<rootDir>/node_modules/'],
};
```

# Setup .prettierrc

```json
{
    "tabWidth": 2,
    "printWidth": 120,
    "singleQuote": true,
    "trailingComma": "es5",
    "arrowParens": "avoid",
    "semi": true
}
```