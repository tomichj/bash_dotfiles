java=`/usr/libexec/java_home 2>/dev/null`
if [ -n "$java" ]; then
	export JAVA_HOME=$java
fi
