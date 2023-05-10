
module.exports = function(eleventyConfig) {
    eleventyConfig.setUseGitIgnore(false);

    // Copy any .svg or midi file to `_site`, via Glob pattern
    // Keeps the same directory structure
    eleventyConfig.addPassthroughCopy("songs/**/*.svg");
    eleventyConfig.addPassthroughCopy("songs/**/*.midi");
    eleventyConfig.addPassthroughCopy("songs/styles.css");
};
