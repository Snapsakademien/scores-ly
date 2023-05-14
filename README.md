# scores-ly

Initiative by Joakim Sandström. Tech support by Tobias Skarhed.

Programmatic representation of classical songs (TTBB). These songs are in the public domain. The Lilypond files may be used to generate PDFs and compile however you want, but they are also published to a website 

## Features

- Generate PDFs (or other formats)
- Generate MIDI-files for part separately
- Use LaTeX to append the PDFs into a song book
- MIDI files and scores are published to the website

## How to add songs with Lilypond

The files are written with [Lilypond](http://lilypond.org/). It is a good idea to separate the parts when writing so that the MIDI files can be correctly generated. There is a [video tutorial](https://www.youtube.com/watch?v=tclwyZr08bE) available for new users. If you want the song to appear on the website, add a `.yaml` file with title and author in the same place as the `main.ly`.

## How to develop the website
1. Install `nodejs`
2. Run `npm install` to install dependencies
3. RUn ´npm run build:songs´ to generate SVGs and MIDI files
4. Run `npm run build:pre-11ty` to generate metadata files for 11ty to use
5. Run `npm start` to develop with 11ty

## Ideas
- Make good templates for generating song books
