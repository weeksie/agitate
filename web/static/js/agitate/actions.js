import request from 'superagent';
import { camelKeys, createActions } from './action-utils';

function mapToAgitate(response) {
  return response.json().then(json => Promise.resolve(camelKeys(json)));
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
        payload: { },
        meta: {
          isFetching: true
        }
      });
      return fetch(`/api/districts?zip_code=${zipCode}`)
        .then(mapToAgitate)
        .then(({ districts }) => dispatch({
          type: 'FETCH_DISTRICTS_BY_ZIP_CODE',
          payload: {
            lat: districts[0].lat,
            lon: districts[0].lon,
            districts
          }
        }))
        .catch(error =>console.log(error)&& dispatch({
          type: 'FETCH_DISTRICTS_BY_ZIP_CODE',
          error: true,
          payload: {
            errorMessage: "Couldn't find districts for the zip code"
          }
        }));
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
        .then(mapToAgitate)
        .then(district => dispatch({
          type: 'FETCH_DISTRICT_BY_LAT_LON',
          payload: {
            lat: district.lat,
            lon: district.lon,
            districts: [ district ]
          }
        }))
      /* .catch(error => dispatch({
       *   type: 'FETCH_DISTRICT_BY_LAT_LON',
       *   error: true,
       *   payload: {
       *     errorMessage: error
       *   }
       * }));*/
    }
  },

  FETCH_STATE: (id) => {
    return (dispatch) => {
      dispatch({
        type: 'FETCH_STATE',
        payload: { },
        meta: {
          isFetching: true
        }
      });

      return fetch(`/api/states/${id}`)
        .then(mapToAgitate)
        .then(({ districts }) => dispatch({
          type: 'FETCH_STATE',
          payload: { districts }
        }))
        .catch(error => dispatch({
          type: 'FETCH_STATE',
          error: true,
          payload: { errorMessage: error }
        }));
    }
  }
});
