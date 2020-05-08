*** Keywords ***

Iniciar Device Android
  Open Application
  ...  ${REMOTE_URL}
  ...  platformName=${PLATFORM_NAME_ANDROID}
  ...  platformVersion=${PLATFORM_VERSION}
  ...  deviceName=${DEVICE_NAME_ANDROID}
  ...  app=${APP_ANDROID}
  ...  appPackage=${APP_PACKAGE}
  ...  noReset=False
  ...  autoGrantPermissions=true
  ...  adbExecTimeout=600000000
  
Register Keyword To Run On Failure
  Capture Page Screenshot
  Log Source
