import React, { PropTypes } from 'react';

import { MAP_TOKEN, MAP_STYLE } from '../config';

import { Map, TileLayer, GeoJSON } from 'react-leaflet';

import InactiveDistricts from './inactive-districts';

const AMERICA_CENTER = [ 37.0902, -95.7129 ];
const AMERICA_BOUNDS = [
  [5.499550, -167.276413], //Southwest
  [83.162102, -52.233040]  //Northeast
];

const TILE_URL = "https://api.mapbox.com/styles/v1/mapbox/{id}/tiles/{z}/{x}/{y}?" +
                 "access_token={accessToken}";
const COLORS   = [
  '#F00',
  '#0F0',
  '#00F',
  '#900',
];

function distKey(district, suffix) {
  return `${district.name}${district.state.short}-${suffix}`;
}


class MapView extends React.Component {
  renderInactiveDistricts(districts) {
    /// set this up to take a flux call
    if(districts[0]) {
      const { id } = districts[0].state;
      return (
        <InactiveDistricts key={`inactive-${id}`} id={-1}/>
      );
    } else {
      return <div />
    }

  }
  renderDistricts(districts) {
    return districts.map( (district, i) => {
      return (
        <GeoJSON
            key={distKey(district, 'outline')}
            data={JSON.parse(district.geom)}
            style={ {color: COLORS[i], weight: 1 } }
        />
      );
    });
  }
  render() {
    const { loading, lat, lon, districts, onClick, onLayerAdd } = this.props;
    // TODO: add bounds here so that the first thing can fly to the bounds?
    // maybe. ////// don't want to cause a map re-render . . . ????
    return (
      <div>
          <Map center={[lat, lon]}
               animate={true}
               zoom={10}
               useFlyTo={true}
               maxBounds={AMERICA_BOUNDS}
               onClick={onClick}
               onLayerAdd={onLayerAdd}>
              />
              <TileLayer
                  url={TILE_URL}
                  accessToken={MAP_TOKEN}
                  id="light-v9"
              />
              { this.renderInactiveDistricts(districts) }
              { this.renderDistricts(districts) }
          </Map>
      </div>
    );
  }
}

export default MapView;
