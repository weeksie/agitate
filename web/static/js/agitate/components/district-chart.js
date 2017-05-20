import React from 'react';

export default ({ districts }) => {
  const district    = districts[0];
  if(!district) { return <div />; }

  const radius      = 25,
        circle      = 2 * Math.PI * radius,
        winner      = selectWinner(district.elections),
        losers      = selectLosers(district.elections),
        [ wWasted ] = wastedVotes([winner]),
        lWasteds    = wastedVotes(losers),

        // TODO get this value and actual election data
        year     = 2016,
        width    = 70,
        height   = width,
        cx       = height / 2,
        cy       = height / 2;
  return (
    <div className="district-chart">
      <svg height={height} width={width} viewBox={`0 0 ${height} ${width}`}>
        <circle
            key="winners-circle"
            r={radius}
            cx={cx}
            cy={cy}
            style={{
              strokeDasharray: stroke(wWasted)
            }}
        />
      </svg>
      <div className="district-chart-caption">{year}</div>
    </div>
  );
}

function selectWinner(array) {
  return array[0];
}
function selectLosers(array) {
  return [ array[1] ];
}
function wastedVotes(array) {
  return [2000];
}
function stroke(array) {
  return "80 157";
}
