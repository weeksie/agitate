import React from 'react';

export default ({ districts }) => {
  const district = districts[0],
        // TODO get this value and actual election data
        year     = 2016,
        width    = 70,
        height   = width,
        cx       = height / 2,
        cy       = height / 2;
  return (
    <div className="district-chart">
      <svg height={height} width={width}>
        <circle r="25" cx={cx} cy={cy} />
      </svg>
      <div className="district-chart-caption">{year}</div>
    </div>
  );
}
