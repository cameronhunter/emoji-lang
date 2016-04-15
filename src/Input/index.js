import React from 'react';
import Editor from '../Editor';
import Titled from '../Titled';

export default props => (
  <Titled title='Input'>
    <Editor {...props} lineNumbers={false} />
  </Titled>
);
