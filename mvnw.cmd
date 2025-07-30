@REM ----------------------------------------------------------------------------
@REM Licensed to the Apache Software Foundation (ASF) under one
@REM or more contributor license agreements.  See the NOTICE file
@REM distributed with this work for additional information
@REM regarding copyright ownership.  The ASF licenses this file
@REM to you under the Apache License, Version 2.0 (the
@REM "License"); you may not use this file except in compliance
@REM with the License.  You may obtain a copy of the License at
@REM
@REM    https://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing,
@REM software distributed under the License is distributed on an
@REM "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
@REM KIND, either express or implied.  See the License for the
@REM specific language governing permissions and limitations
@REM under the License.
@REM ----------------------------------------------------------------------------

@ECHO OFF

SETLOCAL

SET "MAVEN_PROJECT_BASE_DIR=%~dp0"
IF NOT "%MAVEN_PROJECT_BASE_DIR:~-1%"=="\" SET "MAVEN_PROJECT_BASE_DIR=%MAVEN_PROJECT_BASE_DIR%\"

SET MAVEN_WRAPPER_JAR="%MAVEN_PROJECT_BASE_DIR%.mvn\wrapper\maven-wrapper.jar"

IF NOT EXIST %MAVEN_WRAPPER_JAR% (
  ECHO.1>&2
  ECHO Error: Could not find or load the Maven Wrapper JAR.1>&2
  ECHO.1>&2
  EXIT /B 1
)

SET MAVEN_WRAPPER_PROPERTIES="%MAVEN_PROJECT_BASE_DIR%.mvn\wrapper\maven-wrapper.properties"

IF NOT EXIST %MAVEN_WRAPPER_PROPERTIES% (
  ECHO.1>&2
  ECHO Error: Could not find or load the Maven Wrapper properties file.1>&2
  ECHO.1>&2
  EXIT /B 1
)

FOR /F "usebackq tokens=1,2 delims==" %%A IN (%MAVEN_WRAPPER_PROPERTIES%) DO (
    IF "%%A"=="distributionUrl" SET WRAPPER_URL=%%B
)

SET MAVEN_CMD_LINE_ARGS=%*

"%JAVA_HOME%\bin\java.exe" ^
    -Dmaven.multiModuleProjectDirectory="%MAVEN_PROJECT_BASE_DIR%" ^
    -Dmaven.wrapper.jar=%MAVEN_WRAPPER_JAR% ^
    -Dmaven.wrapper.properties=%MAVEN_WRAPPER_PROPERTIES% ^
    -Dmaven.wrapper.script.name="%0" ^
    -jar %MAVEN_WRAPPER_JAR% %MAVEN_CMD_LINE_ARGS%
