/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  Button
} from 'react-native';
import BugFender from 'react-native-bugfender';

export default class BugFenderExample extends Component {

  componentWillMount() {
    BugFender.activateLogger(''/*<Bugfender API Key>*/);
  }

  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to React Native BugFender integration!
        </Text>
        <Button title="Log info" onPress={() => BugFender.info('Info Log')} />
        <Button title="Log warning" onPress={() => BugFender.warning('Warning Log')} />
        <Button title="Log error" onPress={() => BugFender.error('Error Log')} />
        <Button title="Send Issue With Title" onPress={() => BugFender.sendIssueWithTitle('Issue with Title', 'Description of the issue')} />
        <Button title="Enable UI Event Logging" onPress={() => BugFender.enableUIEventLogging()} />
        <Button title="Set Maximum local storage Size" onPress={() => BugFender.setMaximumLocalStorageSize(2)} />
        <Button title="forceSendOnce" onPress={() => BugFender.forceSendOnce()} />
        <Button title="SetForce Enabled" onPress={() => BugFender.setForceEnabled(false)} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'space-around',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  }
});

AppRegistry.registerComponent('BugFenderExample', () => BugFenderExample);
