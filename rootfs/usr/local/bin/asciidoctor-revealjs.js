// Paths
var globalModulePath="/usr/local/lib/node_modules/"

// Arguments
var argv = require(globalModulePath+'minimist')(process.argv.slice(2));
console.dir(argv);
console.log("File: " + argv.file)

// Load asciidoctor.js and asciidoctor-reveal.js
var asciidoctor = require(globalModulePath+'asciidoctor')();
var asciidoctorRevealjs = require(globalModulePath+'asciidoctor-reveal.js');
asciidoctorRevealjs.register()

// Convert the document 'presentation.adoc' using the reveal.js converter
var options = {safe: 'safe', backend: 'revealjs'};
asciidoctor.convertFile(argv.file, options);
