import request from 'superagent';
import { createActions } from 'redux-actions';


const actions = createActions({
  PROMPT_FOR_ZIP_CODE: () => (null),
  CAPTURE_ZIP: (zipCode) => {
    const fiveOnly = zipCode.substring(0, 5);
    if(!fiveOnly.match(/[0-9]{5}/)) {
      return new Error('Malformed zip code');
    } else {
      return fiveOnly;
    }
  },

  SET_QUERY_COORDS: (queryLat, queryLon) => ({ queryLat, queryLon }),
  PIN_COORDS: (pinnedLat, pinnedLon) => ({ pinnedLat, pinnedLon })

}, "SET_DISTRICTS", "SET_DISTRICT", "SET_CURRENT_STATE");

export default actions;
