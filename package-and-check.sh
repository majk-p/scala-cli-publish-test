#!/bin/bash
JAR_LOCATION="$HOME/.ivy2/local/dev.pawlik.michal/scala-cli-publish-tests_3/0.0.0-SNAPSHOT/"
JAR_NAME="scala-cli-publish-tests_3-sources.jar"
TEMP_LOCATION=`mktemp -d`
UNZIP_LOCATION=$TEMP_LOCATION/unzipped
mkdir -p $UNZIP_LOCATION

echo "Scala files in current location:"
tree -P "*.scala" .

echo 
echo "Publishing project with scala-cli and extracting sources from the resulting jar"
echo "-------------------------------------------------------------------------------"
scala-cli --power publish local --organization "dev.pawlik.michal" --project-version="0.0.0-SNAPSHOT" .
cp "$JAR_LOCATION/srcs/$JAR_NAME" $TEMP_LOCATION
unzip "$TEMP_LOCATION/$JAR_NAME" -d $UNZIP_LOCATION
echo "-------------------------------------------------------------------------------"
echo "Published and unzipped to: $UNZIP_LOCATION"
echo "Scala files found in the unzipped file:"
tree -P "*.scala" $UNZIP_LOCATION
