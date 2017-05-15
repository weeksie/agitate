import React, { PropTypes } from 'react';
import { Map, TileLayer, GeoJSON } from 'react-leaflet';

import { isTouch } from '../utils';
import { MAP_TOKEN, MAP_STYLE } from '../config';
import InactiveDistricts from './inactive-districts';
import withStateProvider from './state-provider';

const ShowInactiveDistricts = withStateProvider(InactiveDistricts);


const AMERICA_BOUNDS = [
  [5.499550, -167.276413], //Southwest
  [83.162102, -52.233040]  //Northeast
];

const TILE_URL = "https://api.mapbox.com/styles/v1/mapbox/{id}/tiles/{z}/{x}/{y}?" +
                 "access_token={accessToken}";
const COLORS   = [
  '#043C63',
  '#D8D8D8',
  '#D8D8D8',
  '#D8D8D8',
  '#D8D8D8',
];

function distKey(district, suffix) {
  return `${district.name}${district.state.short}-${suffix}`;
}

class MapView extends React.Component {
  renderDistricts(districts) {
    return districts.map( (district, i) => {
      return (
        <GeoJSON
            attribution="agitate-district"
            key={distKey(district, 'outline')}
            data={JSON.parse(district.geom)}
            style={ {color: COLORS[i], weight: 1 } }
        />
      );
    }).reverse();
  }
  render() {
    const { lat, lon, districts, onClick, onLayerAdd } = this.props;

    const stateId = districts[0] ? districts[0].state.id : null;

    return (
          <Map center={[lon, lat]}
               animate={true}
               zoom={10}
               useFlyTo={true}
               attributionControl={false}
               zoomControl={!isTouch()}
               maxBounds={AMERICA_BOUNDS}
               onClick={onClick}
               onLayerAdd={onLayerAdd}>

              <TileLayer
                  url={TILE_URL}
                  accessToken={MAP_TOKEN}
                  id="light-v9" />

              <ShowInactiveDistricts id={stateId} />
              { this.renderDistricts(districts) }
          </Map>

    );
  }
}

export default MapView;
