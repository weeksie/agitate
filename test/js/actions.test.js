import a from '../../web/static/js/agitate/actions';
import { expect } from 'chai';

const {
  captureZip
} = actions;


describe('agitate reducer', () => {
  it('test a zip correctly', () => {
    expect(a.captureZip('10012')).to.deep.equal({
      type: "CAPTURE_ZIP",
      payload: { zipCode: '10012' }
    });
  });
});
