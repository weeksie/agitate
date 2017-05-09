import actions from '../../web/static/js/agitate/actions';
import { expect } from 'chai';

const {
  captureZip
} = actions;


describe('agitate reducer', () => {
  it('test a zip correctly', () => {
    expect(captureZip('10012')).to.deep.equal({
      type: "CAPTURE_ZIP",
      payload: '10012'
    });
  });

  it('should return an error on a malformed zip code', () => {
    expect(captureZip('1001')).to.deep.equal({
      type: "CAPTURE_ZIP",
      error: true,
      payload: new Error("Malformed zip code")
    });
  });

  it('should trim trialing junk from zip code', () => {
    expect(captureZip('10012-1234')).to.deep.equal({
      type: "CAPTURE_ZIP",
      payload:  '10012'
    });
  })
});
