import React from 'react';

export default (props) => {
  const { districts } = props;
  if(!districts.length) {
    return <div />;
  }

  const district = districts[0],
        score    = grade(district);

  return (
    <div className="district-score" data-score={score}>
        {score}
    </div>
  );
}


function grade(district) {
  const { name, score } = district;
  
  if(name == '00') {
    return 'A';
  }

  if(score < 0.1) {
    return 'A';
  }
  if(score < 0.2) {
    return 'B';
  }
  if(score < 0.25) {
    return 'C';
  }
  if(score < 0.3) {
    return 'D';
  }
  
  return 'F';
}
