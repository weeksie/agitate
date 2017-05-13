import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';

import { actions } from '../actions';

import LoadingScreen from './loading-screen';
import SmallLogo from './small-logo';
import Map from './map';
import DistrictInfo from './district-info';
import RepresentativeInfo from './representative-info';

const {
  fetchDistrictsByZipCode,
  fetchDistrictByLatLon,
  fetchDistrictByStateAndNumber
} = actions;

function loadDistrictsFromURL(dispatch, params) {
  const { zipCode,
          lat,
          lon,
          state,
          number } = params;

  if(zipCode) {
    dispatch(fetchDistrictsByZipCode(zipCode));
  }
  if(lat) {
    dispatch(fetchDistrictByLatLon(lat, lon));
  }
  if(state) {
    dispatch(fetchDistrictByStateAndNumber(state, number));
  }
}

class MapScreen extends React.Component {
  constructor(props) {
    super(props);
    this.state = { };
    loadDistrictsFromURL(this.props.dispatch, props.match.params);
  }
  componentWillReceiveProps({ match }) {
    if(match.url !== this.props.match.url) {
      loadDistrictsFromURL(this.props.dispatch, match.params);
    }
  }

  render() {
    const { isFetching, districts } = this.props;
    if(isFetching || !districts) {
      return this.renderLoadingScreen();
    } else {
      return this.renderMapScreen();
    }
  }

  renderLoadingScreen() {
    return (
      <LoadingScreen />
    );
  }

  renderMapScreen() {
    const { districts, lat, lon } = this.props;
    return (
      <div className="map-screen">
        <SmallLogo />
        <Map
            lat={lat}
            lon={lon}
            districts={districts}
            onClick={() => { }}
            onLayerAdd={() => { }}
        />
        <DistrictInfo districts={districts} />
        <RepresentativeInfo districts={districts} />
      </div>
    );
  }
}

function mapPropsToScreen({ geo }) {
  return geo;
}

export default withRouter(connect(mapPropsToScreen)(MapScreen));
