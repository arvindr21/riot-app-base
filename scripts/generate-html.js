const fs = require('fs-extra');
const path = require('path');
const riot = require('riot');
const pretty = require('pretty');

const compsFolder = path.resolve(__dirname, '../src/components/');
const elemsFolder = path.resolve(__dirname, '../src/elements/');

const distFolder = path.resolve(__dirname, '../static');
const compDistFolder = path.resolve(__dirname, '../static', 'components');
const elemDistFolder = path.resolve(__dirname, '../static', 'elements');

const ElemData = require('./gen-data.json');

if (!fs.existsSync(distFolder)) {
    fs.mkdirSync(distFolder);
}

if (!fs.existsSync(elemDistFolder)) {
    fs.mkdirSync(elemDistFolder);
}

if (!fs.existsSync(compDistFolder)) {
    fs.mkdirSync(compDistFolder);
}

fs.readdirSync(elemsFolder).forEach((file) => {
    if (file.indexOf('.tag') > 0) {
        file = file.replace('.tag', '');
        const tag = require(path.resolve(elemsFolder, file));
        let tagOutput = '';
        ElemData[file].forEach(d => {
            tagOutput = pretty(riot.render(tag, d));
        });
        fs.writeFileSync(path.resolve(elemDistFolder, file + '.html'), tagOutput);
    }
});

fs.readdirSync(compsFolder).forEach((file) => {
    if (file.indexOf('.tag') > 0) {
        file = file.replace('.tag', '');
        const tag = require(path.resolve(compsFolder, file));
        const tagOutput = pretty(riot.render(tag));
        fs.writeFileSync(path.resolve(compDistFolder, file + '.html'), tagOutput);
    }
});