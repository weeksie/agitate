import * as utils from '../utils';
import moment from  'moment';
import React from 'react';

export default (props) => {
  const { districts } = props;

  if(!districts.length) {
    return (<div className="representative" />);
  }
  
  const district                                = districts[0];
  const { phone, name, twitter, facebook,
          termCount, upForReelection, party   } = district.representative,
        phoneLink                               = phone.replace(/[^0-9]/g,''),
        reelectionFormatted                     = moment(upForReelection, 'YYYY-MM-DD').format('MMM Do, YYYY');

  return (
    <div className="representative-contact">
        <p>
            <span className="representative-name">{`${name} (${party})`}</span>
            <span className="representative-phone"><a href={`tel:${phoneLink}`}>{phone}</a></span>
            <span className="representative-fb">
                <a href={`http://facebook.com/${facebook}`}>Facebook</a>
            </span>
            <span className="representative-twitter">
                <a href={`https://twitter.com/${twitter}`}>
                    {`@${twitter}`}
                </a>
            </span>
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
  )
}
