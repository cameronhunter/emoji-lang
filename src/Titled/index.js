import React from 'react';
import style from './style';

export default props => (
  <div className={style.root}>
    <div className={style.title}>{props.title}</div>
    <div>{props.children}</div>
  </div>
);
