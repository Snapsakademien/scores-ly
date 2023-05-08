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

console.log(songShortNames);

songShortNames.forEach((shortName) => {
    const metadata = {};

    const midiFiles = globSync(`./songs/${shortName}*.midi`).reverse();
    
    if(!midiFiles){
        console.log(shortName, 'does not have any MIDI files');
    }
    metadata.midiFiles = midiFiles;
    console.log(metadata.midiFiles);

    const svgFiles = globSync(`./songs/${shortName}*.svg`).reverse();
    if(!svgFiles) {
        console.log(shortName, 'does not have any SVG files');
    }
    metadata.svgFiles = svgFiles;

    const mdFile = globSync(`./songs/${shortName}.md`);
    console.log(mdFile);
    if(!mdFile.length){
       console.log(shortName, 'does not have explicit metadata');
        metadata.title = shortName;
        metadata.author = '-';

        const meta = yaml.dump(metadata, {sortKeys: true});
        // if(!fs.existsSync(`./songs/${shortName}`)) {
        //     fs.mkdirSync(`./songs/${shortName}`);
        // }

        fs.writeFileSync(`./songs/${shortName}.md`, `---\n${meta}---`);

    } else {
        // const meta = yaml.dump(metadata, {sortKeys: true});

        // // File with author etc is available, so let's just append the file names
        // fs.appendFileSync(mdFile[0], `${meta}---`);

    }

});