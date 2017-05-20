import React from 'react';

export default ({ isFetching }) => (
  <div className={`loader ${isFetching? 'is-fetching' : ''}`}>
  </div>
);
