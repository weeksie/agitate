
export const PROMPT_FOR_ZIP_CODE  = 'PROMPT_FOR_ZIP_CODE';
export const WAITING_FOR_ZIP_CODE = 'WAITING_FOR_ZIP_CODE';
export const MALFORMED_ZIP_CODE   = 'MALFORMED_FOR_ZIP_CODE';
export const RECEIVED_ZIP_CODE    = 'RECEIVED_ZIP_CODE';

export const QUERY_COORDS         = 'QUERY_COORDS';
export const PIN_COORDS           = 'PIN_COORDS';
export const SET_DISTRICT         = 'SET_DISTRICT';
export const SET_DISTRICTS        = 'SET_DISTRICTS';

export function promptForZipCode() {
  return { type: PROMPT_FOR_ZIP_CODE };
}

export function captureZip(zipCode) {
  return { type: RECEIVED_ZIP_CODE,  zipCode: zipCode };
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

