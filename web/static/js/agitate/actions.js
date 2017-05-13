import request from 'superagent';
import { camelCase, isFunction, isError } from 'lodash';

// TODO migrate this into its own stupid file and write tests against it.
function createActions(mapping) {
  let types = { },
      actions   = { },
      rest      = Array.prototype.slice.call(arguments, 1);

  Object.keys(mapping).forEach((property) => {
    types[property] = property;
    actions[camelCase(property)] = function() {
      const result = mapping[property].apply(mapping[property], arguments);
      if(isFunction(result)) {
        return result;
      } else {
        const { payload, meta } = result;
        return {
          payload,
          meta,
          type: property,
          error: isError(payload)
        }
      }
    }
  });

  rest.forEach((property) => {
    types[property]               = property;
    actions[camelCase(property)] = x => ({
      type: property,
      payload: x
    });
  });

  return {
    types,
    actions
  }
}

export const { actions, types } = createActions({
  CAPTURE_ZIP: (zipCode) => {
    const maxFive = zipCode.substring(0, 5);
    if(!maxFive.match(/^[0-9]+$/)) {
      return {
        payload: new Error('Malformed zip code')
      };
    } else {
      return {
        payload: maxFive
      };
    }
  },

  FETCH_DISTRICTS_BY_ZIP_CODE: (zipCode) => {
    return (dispatch) => {
      dispatch({
        type: 'FETCH_DISTRICTS_BY_ZIP_CODE',
        meta: {
          isFetching: true
        }
      });
      return fetch(`/api/districts?zip_code=${zipCode}`)
        .then(response => response.json())
        .then(districts => dispatch({
          type: 'FETCH_DISTRICTS_BY_ZIP_CODE',
          payload: {
            lat: district[0].lat,
            lon: district[0].lon,
            districts
          }
        }))
        .catch(error => dispatch(
          type: 'FETCH_DISTRICTS_BY_ZIP_CODE',
          error: true,
          payload: {
            errorMessage: "Couldn't find districts for the zip code"
          }
        ));
    }
  },

  FETCH_DISTRICT_BY_LAT_LON: (lat, lon) => {
    return (dispatch) => {
      dispatch({
        type: 'FETCH_DISTRICT_BY_LAT_LON',
        payload: { },
        meta: {
          isFetching: true
        }
      });

      return fetch(`/api/districts?lat=${lat}&lon=${lon}`)
        .then(response => response.json())
        .then(district => dispatch({
          type: 'FETCH_DISTRICT_BY_LAT_LON',
          payload: {
            lat: district.lat,
            lon: district.lon,
            districts: [ district ]
          }
        }))
        .catch(error => dispatch({
          type: 'FETCH_DISTRICT_BY_LAT_LON',
          error: true,
          payload: {
            errorMessage: error
          }
        }));
    }
  },

  SET_QUERY_COORDS: (queryLat, queryLon) => ({ queryLat, queryLon }),
  PIN_COORDS: (pinnedLat, pinnedLon) => ({ pinnedLat, pinnedLon })
});
