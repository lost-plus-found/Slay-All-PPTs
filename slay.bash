#/bin/bash

EXTENTIONS=("ppt" "pptx" "c" "cpp")
DIRECTORY=..

TARGET_PATH=$(pwd)
cd $DIRECTORY
SOURCE_PATH=$(pwd)
cd $TARGET_PATH

for EXTENTION in ${EXTENTIONS[@]}; do
	FILES=$(find $SOURCE_PATH -name "*.$EXTENTION")
	i=0
	for FILE in $FILES; do
		FILENAME=$(echo $FILE | grep ^/ | grep $EXTENTION$)
		if [ "$FILENAME" = "" ]; then
			FILENAME=$(echo $FILE | grep ^/)
			if [ "$FILENAME" != "" ]; then
				BROKEN_NAME=$FILENAME"\ "
			else
				FILENAME=$(echo $FILE | grep $EXTENTION$)
				if [ "$FILENAME" != "" ]; then
                                	FILE=$BROKEN_NAME$FILENAME
					cp "$FILE" $i.$EXTENTION
					i=$((i+1))
				else
					FILENAME=$(echo $FILE)
					BROKEN_NAME=$BROKEN_NAME$FILENAME"\ "
                       		fi
			fi
		else
			#cp $FILE $i.$EXTENTION
			i=$((i+1))
		fi
	done
done
