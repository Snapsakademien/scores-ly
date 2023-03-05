cd songs/2_18_2
for file in *; do
    if [ -f "$file" ]; then
    # Create a dir and convert the song
    base_filename=`basename "${file%.*}"`
    output_directory_name="../../converted_songs/${base_filename}"
    mkdir "${output_directory_name}"
    /home/runner/bin/lilypond -dbackend=svg -o "$output_directory_name" "$file"

    # Get svg_file
    svg_file=$(basename "$output_directory_name"/*.svg)

    # Get the metadata from the score
    score=$(grep -A 10 '\\score' $file)

    # Get title from score
    title=$(echo "$score" | grep -o 'title = "[^"]*"' | sed 's/title = "//;s/"//')
    # Get composer
    composer=$(echo "$score" | grep -o 'composer = "[^"]*"' | sed 's/composer = "//;s/"//')

    # If the metadata was unavailable from the score it can be found in the htitle & hcomposer
    if [ -z "$title" ]; then
        title=$(grep 'htitle=' $file | sed 's/htitle="\(.*\)"/\1/')
        composer=$(grep 'hcomposer=' $file | sed 's/hcomposer="\(.*\)"/\1/')
    fi

    # Outfile
    metadata_filename="${output_directory_name}/${base_filename}.md"

    # Write the metadata
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

    fi
done
