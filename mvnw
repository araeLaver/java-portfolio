#!/bin/sh
# ----------------------------------------------------------------------------
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
# ----------------------------------------------------------------------------

MAVEN_PROJECT_BASE_DIR=$(cd "$(dirname "$0")" && pwd)

MAVEN_WRAPPER_JAR="$MAVEN_PROJECT_BASE_DIR/.mvn/wrapper/maven-wrapper.jar"

if [ ! -f "$MAVEN_WRAPPER_JAR" ]; then
  echo
  echo "Error: Could not find or load the Maven Wrapper JAR."
  echo
  exit 1
fi

MAVEN_WRAPPER_PROPERTIES="$MAVEN_PROJECT_BASE_DIR/.mvn/wrapper/maven-wrapper.properties"

if [ ! -f "$MAVEN_WRAPPER_PROPERTIES" ]; then
  echo
  echo "Error: Could not find or load the Maven Wrapper properties file."
  echo
  exit 1
fi

WRAPPER_URL=$(grep -e "^distributionUrl=.*" "$MAVEN_WRAPPER_PROPERTIES" | cut -d'=' -f2-)

MAVEN_CMD_LINE_ARGS="$@"

"$JAVA_HOME/bin/java" \
    -Dmaven.multiModuleProjectDirectory="$MAVEN_PROJECT_BASE_DIR" \
    -Dmaven.wrapper.jar="$MAVEN_WRAPPER_JAR" \
    -Dmaven.wrapper.properties="$MAVEN_WRAPPER_PROPERTIES" \
    -Dmaven.wrapper.script.name="$0" \
    -jar "$MAVEN_WRAPPER_JAR" $MAVEN_CMD_LINE_ARGS
