import { combineReducers } from 'redux';
import { RECEIVED_ZIP_CODE, QUERY_COORDS, PIN_COORDS } from './actions';
import { SET_DISTRICT, SET_DISTRICTS } from './actions';

export function geo(state = {}, action) {
  switch(action.type) {
    case RECEIVED_ZIP_CODE:
      return { zipCode: action.zipCode };
    case QUERY_COORDS:
      return Object.assign({}, state, {
        zipCode: undefined,
        queryLat: action.queryLat,
        queryLon: action.queryLon
      });
    case PIN_COORDS:
      return Object.assign({}, state, {
        zipCode: undefined,
        queryLat: undefined,
        queryLon: undefined,
        pinnedLat: action.pinnedLat,
        pinnedLon: action.pinnedLon
      });
    case SET_DISTRICT:
      return Object.assign({}, state, {
        queryLat: undefined,
        queryLon: undefined
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
