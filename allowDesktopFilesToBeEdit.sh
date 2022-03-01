desktopFiles=($(ls files/))
fileNum=${!desktopFiles[@]}
#echo "${desktopFiles[1]}"

for i in $fileNum;
do
    sudo chattr -i "/usr/share/applications/${desktopFiles[$i]}"
done

desktopFiles=($(ls filesNotInUse/))
fileNum=${!desktopFiles[@]}

for i in $fileNum;
do
    sudo chattr -i "/usr/share/applications/${desktopFiles[$i]}"
done

