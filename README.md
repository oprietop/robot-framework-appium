# RF + APPIUM #
Appium + Robot Framework# check the mobile devices connected.

## Notes ##
- Check the connected devices (DEVICENAME)  
`adb devices`

- Check the app packages installed in the mobile device  
`adb shell pm list packages -f`

- Check if appium server is up & running.  
`nc -vvznw1 appium 4723`

- Check for runnning elements.  
`adb shell dumpsys window windows | grep Focus`

- Check for the current app package/activity.  
`adb shell dumpsys window windows | grep -E "mCurrentFocus"`
