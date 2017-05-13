import React from 'react';
import DistrictLabel from './district-label';
import DistrictChart from './district-chart';
import DistrictScore from './district-score';

export default (props) => (
  <div className="district-info">
    <DistrictLabel { ...props } />
    <DistrictChart { ...props } />
    <DistrictScore { ...props } />
  </div>
);
