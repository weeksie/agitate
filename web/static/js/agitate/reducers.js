import { combineReducers, createStore, applyMiddleware, compose } from 'redux';
import { types } from './actions';
import thunk from 'redux-thunk';

const {
  CAPTURE_ZIP,
  FETCH_DISTRICTS_BY_ZIP_CODE,
  FETCH_DISTRICT_BY_LAT_LON,
  FETCH_STATE
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

const DEFAULT_GEO = {
  lat: -95.7129, // Geographic Center of America
  lon: 37.0902,
  districts: [ ]
};

export const geo = function(state  = DEFAULT_GEO,
                            { type, payload, meta, error   }) {
  switch(type) {
    case FETCH_DISTRICT_BY_LAT_LON:
    case FETCH_DISTRICTS_BY_ZIP_CODE:
      const { errorMessage, districts, lat, lon } = payload;

      if(meta && meta.isFetching) {
        return s(state, { isFetching: meta.isFetching });
      } else if(errorMessage) {
        return s(state, { isFetching: false, error, errorMessage });
      } else if(lat) {
        return s(state, { isFetching: false, districts, lat, lon });
      }
    default:
      return state;
  }
};

const state = function(state = { }, { type, meta, error, payload }) {
  switch(type) {
    case FETCH_STATE:
      const { errorMessage, districts } = payload;
      return s(state, {
        isFetching: meta && meta.isFetching,
        districts: districts,
        error,
        errorMessage
      });
    default:
      return state;
  }
}

function s(state, nextState) {
  return Object.assign({ }, state, nextState);
}

const reducers = combineReducers({
  zip,
  geo,
  state
});

const hasTools            = typeof __REDUX_DEVTOOLS_EXTENSION_COMPOSE__ !== 'undefined';
const composeWithDevTools =
  hasTools? __REDUX_DEVTOOLS_EXTENSION_COMPOSE__ : compose;

export default createStore(
  reducers,
  composeWithDevTools(applyMiddleware(thunk))
);
