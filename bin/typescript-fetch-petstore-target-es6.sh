#!/bin/sh

SCRIPT="$0"
echo "# START SCRIPT: $SCRIPT"

while [ -h "$SCRIPT" ] ; do
  ls=`ls -ld "$SCRIPT"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    SCRIPT="$link"
  else
    SCRIPT=`dirname "$SCRIPT"`/"$link"
  fi
done

if [ ! -d "${APP_DIR}" ]; then
  APP_DIR=`dirname "$SCRIPT"`/..
  APP_DIR=`cd "${APP_DIR}"; pwd`
fi

executable="./modules/openapi-generator-cli/target/openapi-generator-cli.jar"

if [ ! -f "$executable" ]
then
  mvn -B clean package
fi

# if you've executed sbt assembly previously it will use that instead.
export JAVA_OPTS="${JAVA_OPTS} -Xmx1024M -DloggerPath=conf/log4j.properties"
ags="generate -i modules/openapi-generator/src/test/resources/2_0/petstore.yaml -g typescript-fetch -c bin/typescript-fetch-petstore-target-es6.json -o samples/client/petstore/typescript-fetch/builds/es6-target $@"

java $JAVA_OPTS -jar $executable $ags

mkdir -p samples/client/petstore/typescript-fetch/builds/es6-target/
mkdir -p samples/client/petstore/typescript-fetch/tests/default/

cp CI/samples.ci/client/petstore/typescript-fetch/builds/es6-target/pom.xml samples/client/petstore/typescript-fetch/builds/es6-target/pom.xml
cp CI/samples.ci/client/petstore/typescript-fetch/tests/default/pom.xml samples/client/petstore/typescript-fetch/tests/default/pom.xml 
