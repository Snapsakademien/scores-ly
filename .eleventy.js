module.exports = function(eleventyConfig) {

    // Copy any .jpg file to `_site`, via Glob pattern
    // Keeps the same directory structure.
    eleventyConfig.addPassthroughCopy("**/*.svg");
    eleventyConfig.addPassthroughCopy("**/*.midi");
};
