const dumpGitLogs = require('dump-git-logs').default;
const path = require('path');

const options = {
    fileName: 'CHANGELOG.md',
    filePath: path.resolve(__dirname, '..'),
    type: 'default'
}

dumpGitLogs(options);