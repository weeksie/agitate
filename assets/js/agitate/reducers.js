import { combineReducers, createStore, applyMiddleware, compose } from 'redux';
import { types } from './actions';
import thunk from 'redux-thunk';

const {
  CAPTURE_ZIP,
  FETCH_DISTRICTS_BY_ZIP_CODE,
  FETCH_DISTRICT_BY_LAT_LON,
  FETCH_STATE
} = types;

const elections = [
  {
    totalVotes: 1000,
    results: [
      { party: "R", wasted_votes: 300, total_votes: 5301 },
      { party: "D", wasted_votes: 4699, total_votes: 4699 },
    ]
  },
  {
    totalVotes: 1000,
    results: [
      { party: "R", wasted_votes: 300, total_votes: 5301 },
      { party: "D", wasted_votes: 4699, total_votes: 4699 },
    ]
  }
];

export const zip = function(state = { }, { type, error, payload }) {
  switch(type) {
    case CAPTURE_ZIP:
      if(error) {
        return s(state, {
          error: true,
          zipCodeError: "Must enter a valid US Zip Code"
        });
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
  // Geographic Center of America
  lat: -95.7129,
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
        const withElections = districts.map(district => ({
          ...district,
          elections
        }));
        return s(state, { isFetching: false, districts: withElections, lat, lon });
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
  composeWithDevTools(
    applyMiddleware(thunk)
  )
);
