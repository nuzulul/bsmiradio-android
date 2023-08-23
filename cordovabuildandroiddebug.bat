call cordova telemetry off
call cordova platform remove android
call cordova platform add android@12.0.0
call cordova build android
copy /Y %~dp0platforms\android\app\build\outputs\apk\debug\app-debug.apk %~dp0app-debug.apk
pause