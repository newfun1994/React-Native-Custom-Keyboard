
/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, {Component} from 'react';
import {
	AppRegistry,
	StyleSheet,
	Text,
	View,
	WebView,
	TouchableOpacity,
	findNodeHandle,
} from 'react-native';


import TextInputView from './TextInputView';

class RNCustomKeyboard extends Component {
	onInputChange(event) {
		console.log(event.nativeEvent.inputSting);
	}

	render() {
		return (
			<View style={styles.container}>
				<Text style={styles.welcome}>
					React Native Custom Keyboard!
				</Text>

				<View style={{flexDirection:'row'}}>

					<TextInputView.textInputView
						ref = 'input1'
						style={styles.inputView}
						getInputString={this.onInputChange}
					/>
					<TouchableOpacity
						style={{backgroundColor:'#00BFFF'}}
						onPress={() => TextInputView.deleteContent(findNodeHandle(this.refs.input1))}
					>
						<Text>clear</Text>
					</TouchableOpacity>
				</View>

				<View style={{flexDirection:'row'}}>
					<TextInputView.textInputView
						ref = 'input2'
						style={styles.inputView}
						getInputString={this.onInputChange}
					/>
					<TouchableOpacity
						style={{backgroundColor:'#00BFFF'}}
						onPress={() => TextInputView.deleteContent(findNodeHandle(this.refs.input2))}
					>
						<Text>clear</Text>
					</TouchableOpacity>
				</View>

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
		width: 200,
		height: 40,
		backgroundColor: '#FFF',
		borderRadius: 4,
		borderColor: '#999',
		borderWidth: 1
	}
});

AppRegistry.registerComponent('RNCustomKeyboard', () => RNCustomKeyboard);

