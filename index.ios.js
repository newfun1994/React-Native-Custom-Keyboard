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
  View
} from 'react-native';

import TextInputView from './TextInputView';

class RNCustomKeyboard extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          React Native Custom Keyboard!
        </Text>
        <TextInputView style={styles.inputView}/>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  inputView: {
    width:200,
    height:40,
    backgroundColor:'#FFF',
    borderRadius:4,
    borderColor:'#999',
    borderWidth:1
}
});

AppRegistry.registerComponent('RNCustomKeyboard', () => RNCustomKeyboard);
