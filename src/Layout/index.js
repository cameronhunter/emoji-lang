import React from 'react';
import style from './style';

export default class Layout extends React.Component {
  static defaultProps = {
    title: 'Emoji Playground'
  };

  render() {
    return (
      <div id="app" className={style.root}>
        <header className={style.header}>
          {this.props.title}
        </header>
        <main className={style.main}>
          {this.props.children}
        </main>
        <footer className={style.footer}>
          Built using <a href="http://github.com/cameronhunter/emoji-lang">emoji-lang</a> and <a href="http://codemirror.net/">CodeMirror</a> | <a href="https://github.com/cameronhunter/emoji-lang/tree/gh-pages">GitHub</a>
        </footer>
      </div>
    );
  }
};
