import React from 'react';
import Titled from '../Titled';
import Parser from 'emoji-lang';
import Try from 'promise-try';

export default class Output extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  componentWillReceiveProps(props = {}) {
    Try(() => Parser.parse(props.value))
      .then(output => JSON.stringify(output, null, 2))
      .then(value => this.setState({ value }))
      .catch(({ message }) => this.setState({ value: message }));
  }

  render() {
    return (
      <Titled title='Output'>
        <pre>{this.state.value}</pre>
      </Titled>
    );
  }
}
