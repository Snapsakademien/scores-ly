cd songs

for dir in */; do
    (cd $dir && lilypond --svg main.ly)
done