import { combineReducers } from 'redux';
import { RECEIVED_ZIP_CODE, MALFORMED_ZIP_CODE, QUERY_COORDS, PIN_COORDS } from './actions';
import { SET_DISTRICT, SET_DISTRICTS, SET_CURRENT_STATE } from './actions';

import { handleActions } from 'redux-actions';


const geo = handleActions({
  CAPTURE_ZIP: (state, { error, payload }) => {
    if(error) {
      return { zipCodeError: "Must enter a valid US Zip Code" };
    } else {
      return  {
        zipCode: payload,
        isLoading: true
      };
    }
  },
  SET_QUERY_COORDS: (state, { payload: { queryLat, queryLon } }) => (
    Object.assign({ }, state, {
      zipCode: undefined,
      isLoading: true,
      queryLat,
      queryLon
    });
  ),

});




export function geo(state = {}, action) {
  switch(action.type) {
    case CAPTURE_ZIP:
      return { zipCode: action.zipCode, isLoading: true };
    case MALFORMED_ZIP_CODE:
      return { zipCodeError: "Must enter a valid US Zip Code" };
    case QUERY_COORDS:
      return Object.assign({}, state, {
        zipCode: undefined,
        isLoading: true,
        queryLat: action.queryLat,
        queryLon: action.queryLon
      });
    case PIN_COORDS:
      return Object.assign({}, state, {
        zipCode: undefined,
        zipCodeError: undefined,
        queryLat: undefined,
        queryLon: undefined,
        isLoading: undefined,
        pinnedLat: action.pinnedLat,
        pinnedLon: action.pinnedLon
      });
    case SET_DISTRICT:
      return Object.assign({}, state, {
        queryLat: undefined,
        queryLon: undefined
      });
    case SET_CURRENT_STATE:
      return Object.assign({}, state, {
        state: action.state
      });
    default:
      return state;
  }
}

export function districts(state = [ ], action) {
  switch(action.type) {
    case SET_DISTRICTS:
      return action.districts;
    case SET_DISTRICT:
      return [ action.district ];
    default:
      return state;
  }
}

export default combineReducers({
  geo,
  districts
});
