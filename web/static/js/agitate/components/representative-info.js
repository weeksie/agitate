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
      <div className="representative-image">
        <img src={`https://graph.facebook.com/v2.8/${facebook}/picture?type=square`} />
      </div>
      <div className="representative-information">
        <p className="representative-name">{`${name} (${party})`}</p>
        <p className="representative-term-count">
          {`Serving their ${utils.ordinal(termCount)} term.`}
        </p>
        <p className="representative-reelection">
          {`Up for reelection on ${reelectionFormatted}`}
        </p>
      </div>
    </div>
  );
}
