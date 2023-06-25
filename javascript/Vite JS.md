# Vite JS


```bash
yarn create vite my-vue-app --template react-js
```

There is another templates here: [https://vitejs.dev/guide/#scaffolding-your-first-vite-project](https://vitejs.dev/guide/#scaffolding-your-first-vite-project)

```html
<script type='module'></script>
```

Use import in browser ES6

# Why do we need Vite?

WebPack needs to build everything on every save. (Large application take serveral minutes to reload)

## Bundle-based development server setup

All possibilities are bundle together then our development server is ready to run

![Screenshot from 2022-05-23 21-49-16.png](Vite%20JS%20f0e9027ce5cc429491fdd8eb8a4923c4/Screenshot_from_2022-05-23_21-49-16.png)

![Screenshot from 2022-05-23 22-01-39.png](Vite%20JS%20f0e9027ce5cc429491fdd8eb8a4923c4/Screenshot_from_2022-05-23_22-01-39.png)

Webpack bundler will crawl all your JS modules before launching the dev server

![Screenshot from 2022-05-23 21-49-46.png](Vite%20JS%20f0e9027ce5cc429491fdd8eb8a4923c4/Screenshot_from_2022-05-23_21-49-46.png)

Vite starts the server right the away. Vite take dependencies don't change often and pre-bundles them using **esbuild (writen in Go)**.

Vite uses route-based code splitting (doesn’t have to rebundle everything)

![Screenshot from 2022-05-23 21-54-54.png](Vite%20JS%20f0e9027ce5cc429491fdd8eb8a4923c4/Screenshot_from_2022-05-23_21-54-54.png)

Vite delivers native es modules supported in modern browsers. (Browser take the job of bundling and development)

For production vite uses **Roll Up to bundle and tree shake.**

 

When you start dev build, Vite will start by dividing your JS into two categories: **dependenciy modules and application modules**

![Screenshot from 2022-05-24 00-07-09.png](Vite%20JS%20f0e9027ce5cc429491fdd8eb8a4923c4/Screenshot_from_2022-05-24_00-07-09.png)

#javascript
#bundler