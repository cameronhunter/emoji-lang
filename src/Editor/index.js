import React from 'react';
import CodeMirror from 'react-code-mirror';

import style from './style';

export default class Editor extends React.Component {
  static defaultProps = {
    tabSize: 2,
    lineNumbers: true,
    viewportMargin: Infinity,
    matchBrackets: true,
    smartIndent: true,
    onChange: () => {}
  };

  onChange(value) {
    this.setState({ value });
    this.props.onChange(value);
  }

  render() {
    return <CodeMirror {...this.props} {...this.state} onChange={({ target }) => this.onChange(target.value)} />;
  }
}
