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
        <div className="icn representative-phone"><a href={`tel:${phoneLink}`}>{phone}</a></div>
        <div className="icn representative-fb">
            <a href={`http://facebook.com/${facebook}`}>Facebook</a>
        </div>
        <div className="icn representative-twitter">
            <a href={`https://twitter.com/${twitter}`}>
                {`@${twitter}`}
            </a>
        </div>
    </div>
   );
}
