rm -r $1"-stroketopath"
mkdir $1"-stroketopath"
for svgfile in $(ls $1)
do
    cp "$1/"$svgfile $1"-stroketopath"
    inkscape --with-gui $1"-stroketopath/"$svgfile --actions="EditSelectAll;StrokeToPath;FileSave;FileQuit"
    echo "Processed $svgfile"
done
