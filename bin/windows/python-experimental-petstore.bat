set executable=.\modules\openapi-generator-cli\target\openapi-generator-cli.jar

If Not Exist %executable% (
  mvn clean package
)

REM set JAVA_OPTS=%JAVA_OPTS% -Xmx1024M
set ags=generate -i modules\openapi-generator\src\test\resources\2_0\python-client-experimental\petstore-with-fake-endpoints-models-for-testing.yaml -g python-experimental -o samples\client\petstore\python-experimental --additional-properties packageName=petstore_api

java %JAVA_OPTS% -jar %executable% %ags%
