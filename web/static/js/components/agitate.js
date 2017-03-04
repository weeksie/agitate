import React, { PropTypes } from 'react';

import Map from './map';

class Agitate extends React.Component {
  
  render() {
    const { loading, district } = this.props;
    
    return (
      <div>
          <Map />
          <div>
              <span>Score</span>
              <span>{ loading? '. . .' : district.score  }</span>
          </div>
      </div>
    );
  }
}
