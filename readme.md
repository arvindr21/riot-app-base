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
$ npm run gen-comp
$ # or
$ yarn gen-comp
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

## Generate Static HTML
> Do update `scripts/gen-data.json` before running the below command

```bash
$ npm run gen-html
$ # or
$ yarn gen-html
```

## Deploy to `gh-pages`

```bash
$ npm run deploy
$ # or
$ yarn deploy
```

## Development Workflow
```bash
$ npm run dev
$ # once dev is completed
$ npm run build
$ npm run serve # Test the prod app
$ npm run gen-html
$ npm run deploy
```
or
```bash
$ yarn dev
$ # once dev is completed
$ yarn build
$ yarn serve # Test the prod app
$ yarn gen-html
$ yarn deploy
```
