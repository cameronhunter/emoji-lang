import React from 'react';
import style from './style';

export default props => (
  <div className={style.root}>
    <div className={style.title}>{props.title}</div>
    <div className={style.content}>{props.children}</div>
  </div>
);
