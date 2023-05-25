const fs = require('fs');
const yaml = require('js-yaml');
const { globSync } = require('glob');

const songShortNames = fs.readdirSync('./songs', {
    withFileTypes: true
}).reduce((totalArray, currentVal) => {
    // Ignore meta directories
    if(currentVal.name[0] == '_'){
        return totalArray;
    }

    if(currentVal.isDirectory()){
        totalArray.push(currentVal.name);
        return totalArray;
    }
    return totalArray;
}, []);

songShortNames.forEach((shortName) => {

    const yamlFile = globSync(`./songs/${shortName}/*.yaml`)[0];
    if(!yamlFile){
        return;
    }
    const metadata = yaml.load(fs.readFileSync(yamlFile));


    const midiPaths = globSync(`./songs/${shortName}/*.midi`).reverse();

    
    if(!midiPaths){
        console.log(shortName, 'does not have any MIDI files');
    }
    metadata.midiFiles = midiPaths.map((path) => {
        return path.substring(5); // Get path without '/songs'
    });

    const svgPaths = globSync(`./songs/${shortName}/*.svg`).reverse();
    if(!svgPaths) {
        console.log(shortName, 'does not have any SVG files');
    }
    metadata.svgFiles = svgPaths.map((path) => {
        return path.substring(5); // Get path without '/songs'
    });;

    const meta = yaml.dump(metadata);
    console.log(meta);
    fs.writeFileSync(`./songs/${shortName}/index.md`, `---\n${meta}---`);
});
