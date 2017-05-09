import { combineReducers } from 'redux';
import { handleActions } from 'redux-actions';

export const geo = handleActions({
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
    })
  ),
  PIN_COORDS: (state, { payload: { pinnedLat, pinnedLon } }) => (
    { pinnedLat, pinnedLon }
  ),
  SET_DISTRICT: (state, action) => (
    Object.assign({ }, state, { queryLat: undefined, queryLon: undefined })
  ),
  SET_CURRENT_STATE: (state, { payload }) => (
    Object.assign({ }, state, { state: payload })
  )
}, { });

export const districts = handleActions({
  SET_DISTRICTS: (state, { payload }) => payload,
  SET_DISTRICT: (state, { payload }) => ([ payload ])
}, [ ]);


export default combineReducers({
  geo,
  districts
});
