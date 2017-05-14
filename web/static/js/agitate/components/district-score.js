import React from 'react';
import cx from 'classnames';
import { Link } from 'react-router-dom';


export default (props) => {
  const { districts } = props;
  if(!districts.length) {
    return <div />;
  }

  const district = districts[0],
        score    = grade(district),
        shareHref  = `/share/${district.id}`,
        classNames = cx({
          'district-score': true,
          'gop': district.representative.party === 'R',
          'dem': district.representative.party === 'D'
        });

  return (
    <div className={classNames} data-score={score}>
      <div className="district-score-values">
        <span className="district-score-number">{score}</span>
        <span className="district-score-description">District Gerrymandering</span>
      </div>
      <div className="district-share">
        <Link to={shareHref}>
          <span>share</span>
          <img src="/images/share-icon.png" />
        </Link>
      </div>
    </div>
  );
}


function grade(district) {
  const { name, score } = district;

  if(name == '00') {
    return 'N/A';
  }
  if(score > 0.5) {
    return '100%';
  } else {
    return `${Math.floor((score / 0.5) * 100)}%`;
  }

}
