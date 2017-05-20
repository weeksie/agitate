import React from 'react';

export default (props) => (
  <div className="info-blurb">
    <h2>{props.title}</h2>
    <p>{props.children}</p>
  </div>
);
