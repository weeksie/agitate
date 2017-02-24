import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { graphql } from 'react-apollo';
import gql from 'graphql-tag';

import { MAP_TOKEN, MAP_STYLE } from './config';

import ReactMapboxGl, { GeoJSONLayer, Layer, Feature, ScaleControl, ZoomControl } from "react-mapbox-gl";

//import ReactMapGL from 'react-map-gl';


const ZipLat = gql`
query GetZip {
  zipLatitude(code:"10013") {
    lat
    lon
    districts {
      state {
        id
      }
      geom
      name      
    }    
  }
}
`;


class Map extends React.Component {
  render() {
    const { loading, zipLatitude } = this.props.data;

    if(loading) {
      return (<div>Loading. . .</div>);
    } else {
      const { lat, lon, districts } = zipLatitude;
      let i = 0;
      return (
        <ReactMapboxGl
        style={MAP_STYLE}
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
              { districts.map( district => {
                return <GeoJSONLayer
                           key={i++}
                           circlePaint={{ 'circle-opacity': 0 }}
                           linePaint={{ 'line-width': 2, 'line-color': '#300' }}
                           fillPaint={{
                             'fill-color': '#F00',
                             'fill-opacity': 0.3,
                             'fill-outline-color': '#F00'
                           }}
                           data={ JSON.parse(district.geom) } />;
              })}
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

const ZipMap = graphql(ZipLat)(Map);

export default ZipMap;
