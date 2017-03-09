import React, { PropTypes } from 'react';

import { MAP_TOKEN, MAP_STYLE } from '../config';

import { Map, Marker, Popup, TileLayer, GeoJSON } from 'react-leaflet';

const AMERICA        = [ 37.0902, -95.7129 ];
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

function flatten(districts) {
  return districts[0] ? districts : [ districts ];
}
function distKey(district, suffix) {
  return `${district.name}${district.state.short}-${suffix}`;
}
class MapView extends React.Component {
  renderDistricts(districts) {
    return flatten(districts).map( (district, i) => {
      return (
        <GeoJSON
            key={distKey(district, 'outline')}
            data={JSON.parse(district.geom)}
            style={ {color: COLORS[i]} }
        />
      );
    });
  }
  renderMarkers(districts) {
    return flatten(districts).map( (district, i) => {
      const { state, lon, lat, name } = district;
      const score = Math.round(district.score * 100) / 100;
      return (
        <Marker key={distKey(district, 'mark')} position={[lon, lat]}>
            <Popup><span>{ state.short + "/" + name + " - score: " + score }</span></Popup>
        </Marker>
      );
    });
  }
  render() {
    const { loading, lat, lon, districts, onClick, onLayerAdd } = this.props;
    
    return (
      <div>
          <Map center={[lat, lon]}
               zoom={10}
               useFlyTo={true}
               maxBounds={AMERICA_BOUNDS}
               onClick={onClick}
               onLayerAdd={onLayerAdd}>
              
              <TileLayer
                  url={TILE_URL}
                  accessToken={MAP_TOKEN}
                  id="light-v9"
              />
              
              { this.renderDistricts(districts) }
              { this.renderMarkers(districts) }
          </Map>
      </div>
    );
  }
}

export default MapView;
