java=`/usr/libexec/java_home 2>/dev/null`

# If JAVA_HOME is not already set? Then set it.
if [ -n "$java" ] && [ -z "$JAVA_HOME" ]; then
	export JAVA_HOME=$java
fi
