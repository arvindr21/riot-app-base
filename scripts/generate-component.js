const colors = require('colors');
const prompt = require('prompt');
const fs = require('fs');

prompt.message = colors.black('Question');

prompt.start();
const schema = {
    properties: {
        'name': {
            description: colors.magenta('Enter a component name'),
            pattern: /^[a-zA-Z\-]+$/,
            message: 'Name must be only letters or dashes',
            required: true,
            default: 'my-awesome-component'
        }
    }
};

prompt.get(schema, function(err, result) {
    if (!result) return;

    console.log(`Creating component ${result.name}...`.blue);

    const componentTemplate = `<${result.name}>
  <!-- Component HTML Start -->
  <h1>${result.name}!</h1>
  <!-- Component HTML End -->
  <!-- Component Style Start -->
  <style scoped>
    h1{
      font-style: italic;
    }
  </style>
  <!-- Component Style End -->
  <!-- Component Script Start -->
  <script>
    this.on('mount', () => {
      console.log('Component mounted with options', this.opts);
      // Load data or AJAX
    });
  </script>
  <!-- Component Script End -->
</${result.name}>
`;
    const file = __dirname + `/../src/components/${result.name}.tag`;
    if (fs.existsSync(file)) {
        console.log(`Component with the name "${result.name}" already exists :/. Please choose a different name.`.yellow);
        console.log(`Creating component ${result.name} failed.`.red);
    } else {
        fs.writeFileSync(file, componentTemplate);
        fs.appendFileSync(__dirname + '/../src/components/includes.js', `\nrequire('./${result.name}.tag');`);
        console.log('Updated src/components/includes.js'.magenta);
        console.log(`Created component ${result.name}.`.green);
    }

});