import * as utils from '../utils';
import React from 'react';

export default (props) => {
  const { districts } = props;

  if(!districts.length) {
    return (<div className="representative" />);
  }
  
  const district = districts[0];
  const { phone, representative } = district,
          phoneLink               = phone.replace(/[^0-9]/g,'');

  return (
    <div className="representative-contact">
        <span className="representative-name">{representative}</span>
        <span className="representative-phone"><a href={`tel:${phoneLink}`}>{phone}</a></span>
    </div>
  )
}
