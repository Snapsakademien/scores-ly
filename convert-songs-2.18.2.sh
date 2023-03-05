mkdir converted_songs
cd songs
for file in *; do
    if [ -f "$file" ]; then
    # Create a dir and convert the song
    base_filename=`basename "${file%.*}"`
    output_directory_name="../converted_songs/${base_filename}"
    mkdir "${output_directory_name}"
    /home/runner/bin/lilypond -dbackend=svg -o "$output_directory_name" "$file"

    # Get the metadat
    score=$(grep -A 10 '\\score' $file)

    # Get title
    title=$(echo "$score" | grep -o 'title = "[^"]*"' | sed 's/title = "//;s/"//')
    # Get composer
    composer=$(echo "$score" | grep -o 'composer = "[^"]*"' | sed 's/composer = "//;s/"//')

    # Outfile
    metadata_filename = "${output_directory_name}/${base_filename}.md"

    echo -e "---" >> "$output_directory_name"
    echo -e "title: $title" >> "$output_directory_name"
    echo -e "composer: $composer" >> "$output_directory_name"
    echo -e "midiFiles:" >> "$output_directory_name"

    for midi_file in "$output_directory_name"/*.midi; do
        echo -e "$midi_file" >> "$output_directory_name"
    done

    echo -e "---" >> "$output_directory_name"

    break

    fi
done
