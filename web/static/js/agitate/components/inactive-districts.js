import React, { PropTypes } from 'react';
import { GeoJSON }          from 'react-leaflet';
import { connect }          from 'react-redux';
import { graphql, compose } from 'react-apollo';
import { StateById }        from '../queries';


class InactiveDistricts extends React.Component {
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

function mapStateToProps(componentState){
  const { state } = componentState.geo;
  const id        = state && state.id;
  return {
    id: parseInt(id)
  }
}
// NO Data is coming through. TODO: troubleshoot this.
// query works fine, it's a fucking state thing (of course)
const withData = compose(
  connect(mapStateToProps),
  graphql(StateById, { skip: ({id}) => !id })
);

export default withData(InactiveDistricts)

