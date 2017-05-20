import * as utils from '../utils';
import React from 'react';

export default (props) => {
  const { districts } = props;

  if(!districts.length) {
    return (
      <div className="district-label">
        <h2>
          <span className="district-label-waiting">Find your congressional district.</span>
        </h2>
      </div>
    );
  }

  const district = districts[0];

  if(district.name === '00') {
    return (
      <div className="district-label">
        <h2>
          <span className="district-label-state">{district.state.short}</span>
          <span> At large congressional district</span>
        </h2>
      </div>
    )
  }

  return (
    <div className="district-label">
      <h2>
        <span className="district-label-state">{district.state.short}</span>
        <span>{' '}</span>
        <span className="district-label-name">{utils.ordinal(district.name)}</span>
        <span> congressional district</span>
      </h2>
    </div>
  );
}
