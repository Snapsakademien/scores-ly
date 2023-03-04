mkdir converted_songs
cd songs
for file in *; do
    if [ -f "$file" ]; then
    base_filename=`basename "${file%.*}"`
    directory_name="../converted_songs/${base_filename}"
    mkdir "${directory_name}"
    /home/runner/bin/lilypond -dbackend=svg -o "$directory_name" "$file"
    fi
done
