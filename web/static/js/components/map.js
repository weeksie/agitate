import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';

import { MAP_TOKEN, MAP_STYLE } from '../config';

import ReactMapboxGl, { GeoJSONLayer, Layer, Feature, ScaleControl, ZoomControl } from "react-mapbox-gl";

//import ReactMapGL from 'react-map-gl';


const ZipLat = gql`
query GetZip {
  zipLatitude(code:"99504") {
    lat
    lon
    districts {
      state {
        id
      }
      geom
      name
      score      
    }    
  }
}
`;


const COLORS = [
  '#F00',
  '#0F0'
];

class Map extends React.Component {
  handleMapClick(e) {
    console.log('fnord?', e);
  }
  render() {
    const { loading, zipLatitude } = this.props.data;

    if(loading) {
      return (<div>Loading. . .</div>);
    } else {
      const { lat, lon, districts } = zipLatitude;
      return (
        <ReactMapboxGl
            style={MAP_STYLE}
            onClick={this.handleMapClick}
            accessToken={MAP_TOKEN}
            containerStyle={{ height: '100vh', width: '100vw' }}
            center={[lon, lat]}
            zoom={[13]}>
            <ScaleControl/>
            <ZoomControl/>
            <Layer
                type="symbol"
                id="marker"
                layout={{ "icon-image": "marker-15" }}>
                <Feature coordinates={[ lon, lat ]}/>
            </Layer>
            {
              districts.map( (district, i) => {
                return <GeoJSONLayer
                           key={i}
                           data={JSON.parse(district.geom)}
                           circlePaint={{ 'circle-opacity': 0 }}
                           linePaint={{ 'line-width': 2, 'line-color': '#300' }}
                           fillPaint={{
                             'fill-color': COLORS[i],
                             'fill-opacity': 0.3,
                             'fill-outline-color': '#F00'
                           }} />;
              })
            }
        </ReactMapboxGl> 
      );
    }
  }
}

Map.propTypes = {
  data: PropTypes.shape({
    loading: PropTypes.bool,
    zipLatitude: PropTypes.object
  })
};

export default graphql(ZipLat)(Map);
