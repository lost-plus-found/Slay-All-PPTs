#/bin/bash

#cp for copy 
#mv for move

SLAY_LEVEL=cp

EXTENTIONS=("ppt" "pptx" "c" "cpp")

SOURCE_DIR=..

TARGET_PATH=$(pwd)
cd $SOURCE_DIR
SOURCE_PATH=$(pwd)
cd $TARGET_PATH

for EXTENTION in ${EXTENTIONS[@]}; do
	find $SOURCE_PATH -name "*.$EXTENTION" > FILES.txt

	NUMBER_OF_FILES=$(grep -c "" FILES.txt)

	for i in `seq 1 $NUMBER_OF_FILES`; do
        	FILE=$(sed -n "$i p" FILES.txt)
        	$SLAY_LEVEL "$FILE" "$TARGET_PATH/$i.$EXTENTION"
	done
done

rm FILES.txt
