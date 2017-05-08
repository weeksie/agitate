import request from 'superagent';
import { createActions } from 'redux-actions';

export const PROMPT_FOR_ZIP_CODE  = 'PROMPT_FOR_ZIP_CODE';
export const MALFORMED_ZIP_CODE   = 'MALFORMED_FOR_ZIP_CODE';
export const RECEIVED_ZIP_CODE    = 'RECEIVED_ZIP_CODE';

export const QUERY_COORDS         = 'QUERY_COORDS';
export const PIN_COORDS           = 'PIN_COORDS';
export const SET_DISTRICT         = 'SET_DISTRICT';
export const SET_DISTRICTS        = 'SET_DISTRICTS';
export const FLY_TO_DISTRICT      = 'FLY_TO_DISTRICT';
export const SET_CURRENT_STATE    = 'SET_CURRENT_STATE';

export const TWITTER_IMAGE_REQUEST = 'TWITTER_IMAGE_REQUEST';
export const TWITTER_IMAGE_SUCCESS = 'TWITTER_IMAGE_SUCCESS';

const actions = createActions({
  PROMPT_FOR_ZIP_CODE: () => (null),
  CAPTURE_ZIP: (zipCode) => {
    const fiveOnly = zipCode.substring(0, 5);
    if(!fiveOnly.match(/[0-9]{5}/)) {
      return new Error('Malformed zip code');
    } else {
      return { zipCode: fiveOnly };
    }
  },

  SET_QUERY_COORDS: (queryLat, queryLon) => { queryLat, queryLon },
  PIN_COORDS: (pinnedLat, pinnedLon) => { pinnedLat, pinnedLon },

  "SET_DISTRICTS",
  "SET_DISTRICT",
  "SET_CURRENT_STATE"
});

export default actions;
