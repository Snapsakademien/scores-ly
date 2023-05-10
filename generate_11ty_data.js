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
    
    if(!currentVal.name.includes(".ly")) {
        return totalArray;
    }

    const filename = currentVal.name.split('.')[0];
    totalArray.push(filename);
    return totalArray;

}, []);

//console.log(songShortNames);

songShortNames.forEach((shortName) => {
    const metadata = {};

    const midiFiles = globSync(`./songs/${shortName}*.midi`).reverse();
    
    if(!midiFiles){
        console.log(shortName, 'does not have any MIDI files');
    }
    metadata.midiFiles = midiFiles;
    //console.log(metadata.midiFiles);

    const svgFiles = globSync(`./songs/${shortName}*.svg`).reverse();
    if(!svgFiles) {
        console.log(shortName, 'does not have any SVG files');
    }
    metadata.svgFiles = svgFiles;

    //const mdFile = globSync(`./songs/${shortName}.md`);

    const yamlFile = globSync(`./songs/${shortName}.yaml`);
    if(!yamlFile.length){
        return;
    }

    const yamlData = yaml.load(fs.readFileSync(yamlFile[0]));
    console.log(yamlData);
    metadata.title = yamlData.title;
    metadata.author = yamlData.author;

    const meta = yaml.dump(metadata);
    console.log(meta);

    fs.writeFileSync(`./songs/${shortName}.md`, `---\n${meta}---`);

});