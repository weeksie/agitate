import React, { PropTypes } from 'react';

import { connect } from 'react-redux';

import { graphql, compose } from 'react-apollo';

import { DistrictByCoords, DistrictsByZip } from '../queries';
import { setQueryCoords, setPinnedCoords, setDistrict,
         setDistricts, flyToDistrict, setCurrentState } from '../actions';

import Map from './map';
import ZipPrompt from './zip-prompt';
import DistrictLabel from './district-label';
import DistrictScore from './district-score';
import Representative from './representative';


class Agitate extends React.Component {
  constructor(props) {
    super(props);
    this.state = { };
    this.onMapClick = this.onMapClick.bind(this);
    this.onDistrictAdd = this.onDistrictAdd.bind(this);
  }
  componentWillReceiveProps(nextProps) {
    if(this.props === nextProps || !nextProps.data) {
      return;
    }
    
    const { dispatch }                    = this.props;
    const { zipByCode, districtByCoords, loading } = nextProps.data;
    
    if(zipByCode) {
      const { lat, lon, districts } = zipByCode;
      dispatch(setPinnedCoords(lat, lon));
      dispatch(setDistricts(districts));
    }
    if(districtByCoords) {
      // TODO use Immutable so that I don't have to check for this explicitely.
      // It would be caught by `this.props === nextProps`
      const { districts } = this.props;
      if(districts.length === 1 && districts[0].id === districtByCoords.id) {
        return;
      }
      dispatch(setDistrict(districtByCoords));
    }
  }
  onDistrictAdd(map) {
    if(this.props.districts.length === 1 && map.layer.getBounds) {
      // TODO: wire this up with a redux call from _after_ the flyToBounds call to trigger
      // rendering for InactiveDistricts
      if(map.layer.options.attribution !== "inactive-districts") {
        const { dispatch, districts } = this.props;
        const { state }               = districts[0];
        map.layer._map.flyToBounds(map.layer.getBounds());
        map.layer._map.once('zoomend', () => dispatch(setCurrentState(state)));
      }
    }
  }
  onMapClick(map) {
    map.originalEvent.preventDefault();
    const { lat, lng } = map.latlng;
    this.props.dispatch(setQueryCoords(lat, lng));
  }
  renderMap() {
    const { districts, geo }       = this.props
    const { pinnedLat, pinnedLon } = geo;

    return (
      <Map lat={pinnedLat}
           lon={pinnedLon}
           districts={districts}
           onClick={this.onMapClick}
           onLayerAdd={this.onDistrictAdd}
      />
    );
  }
  render() {
    return (
      <div className="agitate">
          { this.props.districts.length ? this.renderMap() : <ZipPrompt /> }
          <div className="district-info">
              <DistrictLabel {...this.props} />
              <DistrictScore {...this.props} />
              <Representative {...this.props} />
          </div>
      </div>
    );
  }
}

function mapStateToProps(state) {
  const { zipCode, queryLat, queryLon } = state.geo;

  return {
    geo: state.geo,
    districts: state.districts,
    zipCode,
    queryLat,
    queryLon
  }
}

const withData = compose(
  connect(mapStateToProps),
  graphql(DistrictsByZip, {
    skip: ({ zipCode }) => { return !zipCode }
  }),
  graphql(DistrictByCoords, {
    skip: ({ queryLat, queryLon }) => {
      return !(queryLat && queryLon);
    }/*,
    props: (props) => {
      const { districtByCoords, loading } = props.data;
      if(districtByCoords) {
        const { id } = districtByCoords;
        console.log(id);
      }

      return props;
    }*/
  })
);

export default withData(Agitate);
