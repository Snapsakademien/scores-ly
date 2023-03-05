module.exports = function(eleventyConfig) {

    // Copy any .svg or midi file to `_site`, via Glob pattern
    // Keeps the same directory structure
    eleventyConfig.addPassthroughCopy("songs/**/*.svg");
    eleventyConfig.addPassthroughCopy("songs/**/*.midi");
};
