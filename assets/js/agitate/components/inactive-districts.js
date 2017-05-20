import React, { PropTypes } from 'react';
import { GeoJSON }          from 'react-leaflet';

export default ({ districts }) => (
  <GeoJSON
      attribution="inactive-district"
      data={districts.map(d => JSON.parse(d.geom))}
      style={{
        color: "#AAA",
        weight: 1,
        opacity: 0.5,
        fillColor: "#CCC"
      }}
  />
);
