import React, { PropTypes } from 'react';
import { GeoJSON }          from 'react-leaflet';

class InactiveDistricts extends React.Component {
  componentWillReceiveProps({ id }) {

  }
  render()  {
    if(!this.props.data) {
      return <div />;
    }
    const { loading, state } = this.props.data;
    if (loading || !state) {
      return <div />;
    }
    const districtGeoms = state.districts.map(d => JSON.parse(d.geom));
    return (
      <GeoJSON
          attribution="agitate"
          data={districtGeoms}
          style={{
            color: "#AAA",
            weight: 1,
            opacity: 0.5,
            fillColor: "#CCC"
          }}
      />
    );
  }
}


export default InactiveDistricts;
