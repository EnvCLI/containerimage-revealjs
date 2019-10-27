// Paths
var globalModulePath="/usr/local/lib/node_modules/"

// Arguments
var argv = require(globalModulePath+'minimist')(process.argv.slice(2));

// Load asciidoctor.js and asciidoctor-reveal.js
var asciidoctor = require(globalModulePath+'asciidoctor')();
var asciidoctorRevealjs = require(globalModulePath+'asciidoctor-reveal.js');
asciidoctorRevealjs.register()

// Convert the document 'presentation.adoc' using the reveal.js converter
var options = {
    backend: 'revealjs',
    to_dir: argv.targetdir
};
asciidoctor.convertFile(argv.file, options);
