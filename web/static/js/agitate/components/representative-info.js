import React from 'react';
import * as utils from '../utils';
import moment from  'moment';

export default (props) => {
  const { districts } = props;

  if(!districts.length) {
    return (<div className="representative-info" />);
  }

  const district                                = districts[0];
  const { phone, name, twitter, facebook,
          termCount, upForReelection, party   } = district.representative,
        phoneLink                               = phone.replace(/[^0-9]/g,''),
        reelectionFormatted                     = moment(upForReelection, 'YYYY-MM-DD').format('MMM Do, YYYY');

  return (
    <div className="representative-info">
      <img className="representative-image"
           src={`https://graph.facebook.com/v2.8/${facebook}/picture?type=square`} />
      <div className="representative-information">
        <p>
          <span className="representative-name">{`${name} (${party})`}</span>
        </p>
        <p>
          <span className="representative-term-count">
            {`Serving their ${utils.ordinal(termCount)} term.`}
          </span>
        </p>
        <p>
          <span className="representative-reelection">
            {`Up for reelection on ${reelectionFormatted}`}
          </span>
        </p>
      </div>
    </div>
  );
}
