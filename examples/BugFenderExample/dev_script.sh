#!/bin/sh
react-native unlink react-native-bugfender
rm -fR node_modules/react-native-bugfender
npm i file:../../
react-native link react-native-bugfender
