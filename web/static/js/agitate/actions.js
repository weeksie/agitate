import request from 'superagent';

export const PROMPT_FOR_ZIP_CODE  = 'PROMPT_FOR_ZIP_CODE';
export const WAITING_FOR_ZIP_CODE = 'WAITING_FOR_ZIP_CODE';
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

export function promptForZipCode() {
  return { type: PROMPT_FOR_ZIP_CODE };
}

export function captureZip(zipCode) {
  const fiveOnly = zipCode.substring(0, 5);
  if(!fiveOnly.match(/[0-9]{5}/)) {
    return { type: MALFORMED_ZIP_CODE };
  } else {
    return { type: RECEIVED_ZIP_CODE,  zipCode: fiveOnly };
  }
}

export function setQueryCoords(lat, lon) {
  return { type: QUERY_COORDS, queryLat: lat, queryLon: lon };
}

export function setPinnedCoords(lat, lon) {
  return { type: PIN_COORDS, pinnedLat: lat, pinnedLon: lon };
}

export function setDistricts(districts) {
  return { type: SET_DISTRICTS, districts };
}
export function setDistrict(district) {
  return { type: SET_DISTRICT, district };
}
export function flyToDistrict(districtLayer) {
  return { type: FLY_TO_DISTRICT, districtLayer };
}
export function setCurrentState(state) {
  return { type: SET_CURRENT_STATE, state };
}

// No luck here. CORS issues. Keeping for later ref.
// iOS has a problem with Twitter's 302 redirect for profile image
// urls
export function fetchTwitterImage(url) {
  return (dispatch) => {
    dispatch({ type: TWITTER_IMAGE_REQUEST });
    request.get(url).withCredentials().end((err, res) => {
      dispatch(setTwitterImage(newURL));
    })
  }
}

export function setTwitterImage(url) {
  return { type: TWITTER_IMAGE_SUCCESS, twitterURL: url };
}
