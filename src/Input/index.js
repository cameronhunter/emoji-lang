import React from 'react';
import Titled from '../Titled';

import style from './style';

export default props => (
  <Titled title='Input'>
    <textarea className={style.input} onInput={(e) => props.onChange(e.target.value)}>{props.value}</textarea>
  </Titled>
);
