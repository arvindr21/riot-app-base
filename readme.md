# Riotjs App Base

> A RiotJS app base with core elements and components structure

## Setup

```bash
$ git clone https://github.com/arvindr21/riot-app-base my-app
$ cd my-app
$ npm install 
$ # or
$ yarn install
```
## Run app

```bash
$ npm run dev 
$ # or
$ yarn dev
```
Navigate to [localhost:8080](http://localhost:8080) to view the app.

## Build app
```bash
$ npm run build
$ # or
$ yarn build
```

## Validate Prod app
```bash
$ npm run serve
$ # or
$ yarn serve
```

Navigate to [localhost:8080](http://localhost:8080) to view the prod app.

## Generate a component
```bash
$ npm run gen
$ # or
$ yarn gen
```

Answer the prompt and your component shall be placed in the `src/components` folder.

## Generate an element
```bash
$ npm run gen-elem
$ # or
$ yarn gen-elem
```

Answer the prompt and your element shall be placed in the `src/components` folder.

> Element => Building block (ex: custom select box or a custom checkbox) & Component => Collection of elements (ex: a form)