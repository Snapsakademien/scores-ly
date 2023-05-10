// const yaml = require("js-yaml");

module.exports = function(eleventyConfig) {
    eleventyConfig.setUseGitIgnore(false);

    // eleventyConfig.addDataExtension("yaml", (contents, filePath) => {
    //     console.log("Trying to process ", filePath);
    //     return yaml.load(contents);
    // });


    //eleventyConfig.setServerPassthroughCopyBehavior("passthrough");

    // Copy any .svg or midi file to `_site`, via Glob pattern
    // Keeps the same directory structure
    eleventyConfig.addPassthroughCopy({"songs/*.svg": "songs"});
    eleventyConfig.addPassthroughCopy({"songs/*.midi": "songs"});
    eleventyConfig.addPassthroughCopy("songs/styles.css");
};
