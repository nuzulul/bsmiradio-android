set /p A="Alias : "
set /p S="Store Password : "
set /p K="Key Password : "
call cordova telemetry off
call cordova platform remove android
call cordova platform add android@12.0.0
call cordova build android --release -- --keystore=../data/keystore/bsmiradio.keystore --storePassword=%S% --alias=%A% --password=%K% --packageType=bundle
copy /Y %~dp0platforms\android\app\build\outputs\bundle\release\app-release.aab %~dp0app-release.aab
pause