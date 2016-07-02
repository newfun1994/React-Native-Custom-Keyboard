// var { requireNativeComponent } = require('react-native');

// // requireNativeComponent 自动把这个组件提供给 "RCTMapManager"
// module.exports = requireNativeComponent('RCTTextInputView', null);

import React from 'react';
import { requireNativeComponent } from 'react-native';

class TextInputView extends React.Component {

  // onChange(event) {
  //   if (!this.props.getPassword) {
  //     return;
  //   }
  //   this.props.getPassword(event.nativeEvent.passwordSrting);
  // }

  render() {
    return <RCTtextInputView 
            {...this.props}
            onInputChange={this.props.getInputString}
          />;
  }
}

//转换参数类型
TextInputView.propTypes = {
  onInputChange: React.PropTypes.func,
};
var RCTtextInputView = requireNativeComponent('RCTTextInputView', TextInputView);
module.exports = TextInputView;