import { geo } from "../../web/static/js/agitate/reducers";
import { PIN_COORDS, QUERY_COORDS, RECEIVED_ZIP_CODE }  from "../../web/static/js/agitate/actions";

describe('agitate reducer', () => {
  it('should return the initial state', () => {
    expect(geo(undefined, {})).toEqual({ });
  });

  it('should set the lat/lon of the map center', () => {
    expect(geo(undefined, { type: PIN_COORDS, pinnedLat: 20, pinnedLon: -20 })).toEqual({
      pinnedLat: 20,
      pinnedLon: -20
    });
  });

  it('should set the lat/lon of a district query', () => {
    expect(geo({
      pinnedLat: 20,
      pinnedLon: -20
    }, {
      type: QUERY_COORDS,
      queryLat: 19, queryLon: -20
    })).toEqual({
      isLoading: true,
      zipCode: undefined,
      pinnedLat: 20,
      pinnedLon: -20,
      queryLat: 19,
      queryLon: -20
    });
  });
});
