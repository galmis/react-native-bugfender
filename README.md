# react-native-bugfender

bugfender docs https://github.com/bugfender/BugfenderSDK-iOS

set up:

1. rnpm install react-native-bugfender

2. Go to your Project > Your Target > General > Linked Frameworks and Libraries and drag BugfenderSDK.framework there. Make sure you have SystemConfiguration.framework and MobileCoreServices.framework there as well.

3. Go to Build Settings and search for "framework search path". Add the following item to it (select recursive):
$(PROJECT_DIR)/../node_modules/react-native-bugfender [recursive]

4. Add your bugfender key to RNBugfender.m
