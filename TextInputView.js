import React from 'react';
import {requireNativeComponent, NativeModules} from 'react-native';

var TextInputViewManager = NativeModules.TextInputViewManager;
class textInputView extends React.Component {

	render() {
		return <RCTtextInputView
			{...this.props}
			onInputChange={this.props.getInputString}
		/>;
	}
}
//转换参数类型
textInputView.propTypes = {
	onInputChange: React.PropTypes.func
};

function deleteContent(reactTag) {
	TextInputViewManager.deleteContents(reactTag);
}

var RCTtextInputView = requireNativeComponent('RCTTextInputView', textInputView);
module.exports = {textInputView,deleteContent};