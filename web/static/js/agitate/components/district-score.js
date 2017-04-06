import React from 'react';
import cx from 'classnames';

export default (props) => {
  const { districts } = props;
  if(!districts.length) {
    return <div />;
  }

  const district = districts[0],
        score    = grade(district),
        classNames = cx({
          'district-score': true,
          'gop': district.representative.party === 'R',
          'dem': district.representative.party === 'D'
        });

  return (
    <div className={classNames} data-score={score}>
        {score}
    </div>
  );
}


function grade(district) {
  const { name, score } = district;
  
  if(name == '00') {
    return 'N/A';
  }
  if(score > 0.5) {
    return '10/10';
  } else {
    return `${Math.floor((score / 0.5) * 10)}/10`;
  }
  
}
