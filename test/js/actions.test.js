import { actions } from '../../web/static/js/agitate/actions';
import { expect } from 'chai';

const {
  captureZip
} = actions;


describe('agitate reducer', () => {
  it('test a zip correctly', () => {
    expect(captureZip('10012')).to.deep.equal({
      type: "CAPTURE_ZIP",
      payload: '10012',
      meta: undefined,
      error: false
    });
  });

  it('should incrementally capture a zip code', () => {
    expect(captureZip('100')).to.deep.equal({
      type: "CAPTURE_ZIP",
      payload: "100",
      meta: undefined,
      error: false
    });
  });

  it('should return an error on a malformed zip code', () => {
    expect(captureZip('1001A')).to.deep.equal({
      type: "CAPTURE_ZIP",
      error: true,
      payload: new Error("Malformed zip code"),
      meta: undefined
    });
  });

  it('should trim trialing junk from zip code', () => {
    expect(captureZip('10012-1234')).to.deep.equal({
      type: "CAPTURE_ZIP",
      payload:  '10012',
      meta: undefined,
      error: false
    });
  })
});
