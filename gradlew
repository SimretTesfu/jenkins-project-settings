#!/usr/bin/env sh

# Gradle startup script for UNIX-based systems

if [ -z "$JAVA_HOME" ]; then
    echo "JAVA_HOME is not set; please configure it ok."
    exit 1
fi

exec "$JAVA_HOME/bin/java" -Xmx64m -Xms64m -classpath gradle/wrapper/gradle-wrapper.jar org.gradle.wrapper.GradleWrapperMain "$@"
