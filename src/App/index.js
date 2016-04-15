import React from 'react';
import SplitPanel from 'react-split-panel';

import Layout from '../Layout';
import Input from '../Input';
import Output from '../Output';

import style from './style.css';

export default class App extends React.Component {
  static defaultProps = {
    text: 'Hello \uD83C\uDF0E!'
  };

  constructor(props) {
    super(props);
    this.state = {
      text: props.text
    };
  }

  render() {
    return (
      <Layout>
        <div className={style.root}>
          <SplitPanel className={style.root} direction='horizontal' defaultWeights={[50, 50]}>
            <Input value={this.state.text} onChange={text => this.setState({ text })} />
            <Output value={this.state.text} />
          </SplitPanel>
        </div>
      </Layout>
    );
  }
};
