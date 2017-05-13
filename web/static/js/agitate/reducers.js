import { combineReducers } from 'redux';
import { types } from './actions';

const {
  CAPTURE_ZIP,
  FETCH_DISTRICTS_BY_ZIP_CODE,
  FETCH_DISTRICT_BY_LAT_LON,
} = types;

export const zip = function(state = { }, { type, error, payload }) {
  switch(type) {
    case CAPTURE_ZIP:
      if(error) {
        return { zipCodeError: "Must enter a valid US Zip Code" };
      } else {
        return  {
          zipCode: payload,
          isReady: payload.length === 5
        };
      }
    default:
      return state;
  }
}

export const geo = function(state = { }, { type, payload, meta, error }) {
  switch(type) {
    case FETCH_DISTRICT_BY_LAT_LON:
    case FETCH_DISTRICTS_BY_ZIP_CODE:
      const { errorMessage, districts, lat, lon } = payload;
      return s(state, {
        isFetching: meta && meta.isFetching,
        error: error,
        errorMessage: errorMessage,
        lat,
        lon,
        districts
      });
    default:
      return state;
  }
};
/*
 *
 * export const districts = function(state = [ ], { type, payload }) {
 *   switch(type) {
 *     case SET_DISTRICTS:
 *       return payload;
 *     case SET_DISTRICT:
 *       return [ payload ];
 *     default:
 *       return state;
 *   }
 * }
 * */
function s(state, nextState) {
  return Object.assign({ }, state, nextState);
}


export default combineReducers({
  zip,
  geo,
//  districts
});
