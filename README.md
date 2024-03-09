# public-capacitor-6-basic-auth-demo

## Commands to setup project
> `npm init @capacitor/app` was used to create this base project 
> Also added Android app to dependencies `npm i @capacitor/android`

## Run commands

```bash
# Remove previous dependencies to install new custom Android package
cd app && rm -rf node_modules && npm install && npm run build

sh build-android.sh
```

## Steps to reproduce

1. Open `adb logcat` in terminal 

2. Run app with run commands `sh build-android.sh` (Make sure you install and build app first to create base files)

2. App should crash and stacktrace `Caused by: java.lang.IllegalArgumentException:  allowedOriginRules https://foo:bar@httpbin.org/basic-auth/foo/bar is invalid` is thrown in terminal

**Screenshot - allowedOriginRules invalid**
![allowedOriginRules invalid](./screenshots/stacktrace.png)

**Note**

This is similar issue as I opened in another Github issue with allowedOriginRules when using paths in the URL, see link: https://github.com/ionic-team/capacitor/issues/7289
