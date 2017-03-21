import React, { PropTypes } from 'react';

export default (props) => {
  const { districts } = props,
             district = districts[0];

  if(!district) {
    return <div className="social-inactive"></div>;
  }
  
  const { phone, name, twitter, facebook } = district.representative,
          phoneLink                        = phone.replace(/[^0-9]/g,'');
  
  return (
    <div className="social">
        <div className="social-label">Agitate</div>
        <a className="icn representative-phone" href={`tel:${phoneLink}`}>{phone}</a>
        <a className="icn representative-fb" href={`http://facebook.com/${facebook}`}>Facebook</a>
        <a className="icn representative-twitter" href={`https://twitter.com/${twitter}`}>{`@${twitter}`}</a>
    </div>
   );
}
