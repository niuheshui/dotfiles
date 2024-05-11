
fonts=$(fc-list | cut -d ':' -f 1 | grep -E '*.(otf|ttf)')

for font in $fonts
do
    font_name=$(basename ${font} | cut -d. -f1)
    bash ../fontview.sh ${font} ${font_name}.png
done
