cd songs/2_24_0
for directory in *; do
    # Create a dir and convert the song
    output_directory_name="../../converted_songs/${directory}"
    mkdir "${output_directory_name}"
    ../../lilypond-2.24.0/bin/lilypond -dbackend=svg -o "$output_directory_name" "$directory"/main.ly

    # Get svg_file
    svg_file=$(basename "$output_directory_name"/*.svg)

    # Outfile
    metadata_filename="${output_directory_name}/${directory}.md"

    # Write the metadata
    # TODO: Get the title and composer
    echo -e "---" >> "$metadata_filename"
    echo -e "title: $title" >> "$metadata_filename"
    echo -e "author: $composer" >> "$metadata_filename"
    echo -e "svgFiles:" >> "$metadata_filename"
    for svg_file in "$output_directory_name"/*.svg; do
        svg_filename="$(basename "$svg_file")"
        echo -e "    - $svg_filename" >> "$metadata_filename"
    done

    echo -e "midiFiles:" >> "$metadata_filename"

    for midi_file in "$output_directory_name"/*.midi; do
        midi_filename="$(basename "$midi_file")"
        echo -e "    - $midi_filename" >> "$metadata_filename"
    done

    echo -e "---" >> "$metadata_filename"

done
