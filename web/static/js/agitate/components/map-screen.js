import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { debounce } from 'lodash';

import { actions } from '../actions';

import Loader from './loader';
import SmallLogo from './small-logo';
import Map from './map';
import DistrictInfo from './district-info';
import RepresentativeInfo from './representative-info';
import ZipPrompt from './zip-prompt';

// TODO move this stuff to another higher order comp
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

  onDistrictAdd({ layer }) {
    if(layer.getBounds && layer.options.attribution !== 'inactive-district') {
      const { districts } = this.props;
      layer._map.flyToBounds(layer.getBounds());
    }
  }

  onMapClick({ originalEvent, latlng }) {
    originalEvent.preventDefault();
    const { lat, lng } = latlng;
    this.props.dispatch(fetchDistrictByLatLon(lat, lng));
  }

  render() {
    const { districts, lat, lon, isFetching } = this.props;

    return (
      <div className="map-screen">
        <SmallLogo />
        <Loader isFetching={isFetching} />
        <Map
            isFetching={isFetching}
            lat={lat}
            lon={lon}
            districts={districts}
            onClick={this.onMapClick.bind(this)}
            onLayerAdd={debounce(this.onDistrictAdd.bind(this))} />
        <DistrictInfo districts={districts} />
        <RepresentativeInfo districts={districts} />
        <ZipPrompt />
      </div>
    );
  }
}

function mapPropsToScreen({ geo }) {
  return geo;
}

export default withRouter(connect(mapPropsToScreen)(MapScreen));
