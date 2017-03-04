# react-native-bugfender

A wrapper around BugfenderSDK-iOS, bugfender docs https://github.com/bugfender/BugfenderSDK-iOS

## Set up:

1. rnpm install react-native-bugfender

2. git clone https://github.com/bugfender/BugfenderSDK-iOS.git or just download the BugfenderSDK-iOS from https://github.com/bugfender/BugfenderSDK-iOS

3. Drag BugfenderSDK.framework to react-native-bugfender folder. In most cases, it would be YOUR_PROJECT/node_modules/react-native-bugfender

4. Go to your Project > Your Target > General > Linked Frameworks and Libraries and either drag BugfenderSDK.framework there or press + >>> press Add Other... >>> select BugfenderSDK.framework from YOUR_PROJECT/node_modules/react-native-bugfender. Make sure you have SystemConfiguration.framework and MobileCoreServices.framework there as well.

5. Go to Build Settings and search for "framework search path". Add the following item to it (select recursive):
$(PROJECT_DIR)/../node_modules/react-native-bugfender [recursive]


## Usage:


```Javascript
import Bugfender from 'react-native-bugfender';


/**
* Activates the Bugfender for a specific app.
* @param appToken The app token of the Bugfender application
* @discussion This method needs to be called before any BFLog call, otherwise the `BFInvalidMethodCallException` exception will be thrown.
* @throws `NSInvalidArgumentException` if Bugfender has already been initialized
with a different app token.
**/

Bugfender.activateLogger('YOUR_APP_TOKEN');

/**
* BFLog(...): Default log.
**/
Bugfender.info(logText);

/**
* BFLogWarn(...): Warning log.
**/
Bugfender.warning(logText);


/**
* BFLogErr(...): Error log.
**/
Bugfender.error(logText);

/**
* Sends an issue
* @discussion Sending an issue forces the logs of the current session being sent
* to the server, and marks the session so that it is highlighted in the web console.
* @param title Short description of the issue.
* @param text Full details of the issue. Markdown format is accepted.
*/
Bugfender.sendIssueWithTitle(title, text);

/**
* Logs all actions performed and screen changes in the application, such as button touches, swipes and gestures.
*/
Bugfender.enableUIEventLogging();

/**
* Set the maximum space availalbe to store local logs. This value is represented in bytes. There's a limit of 50 MB.
**/
Bugfender.maxLocalStorageSize(maxLocalStorageSize);


/**
* Synchronizes all logs with the server once, regardless if this device is enabled or not.
* @discussion This method is useful when an error condition is detected and the logs should be sent to
* the server for analysis, regardless if the device is enabled in the Bugfender Console.
*
* Logs are synchronized only once. After that, the logs are again sent according to the enabled flag
* in the Bugfender Console.
*
* This command can be called anytime, and will take effect the next time the device is online.
*/
Bugfender.forceSendOnce();


/**
* Synchronizes all logs with the server all the time, regardless if this device is enabled or not.
* @discussion This method is useful when the logs should be sent to the server
* regardless if the device is enabled in the Bugfender Console.
*
* Logs are synchronized continuously while forceEnabled is active.
*
* This command can be called anytime, and will take effect the next time the device is online.
* @param enabled Whether logs should be sent regardless of the Bugfender Console settings.
*/
Bugfender.setForceEnabled(enabled);
```
