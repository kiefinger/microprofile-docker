#!/usr/bin/jjs -fv
var cmd = "docker build -t wlp-meetingapp ."
var System = Java.type("java.lang.System");
$EXEC(cmd, System.in, System.out, System.err);
