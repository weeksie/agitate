import { camelKeys } from '../../web/static/js/agitate/action-utils';
import { expect } from 'chai';



describe('Action utils', () => {

  it('should transform keys in a hash to camel case', () => {
    const shallow = {
      snake_case: "Hello",
      moar_snakez: "Snakez"
    };

    expect(camelKeys(shallow)).to.deep.equal({
      snakeCase: "Hello",
      moarSnakez: "Snakez"
    });
  });

  it('should deep transform keys in a hash', () => {
    const deep = {
      snake_case: "Fnord",
      deep_object: {
        moar_snakes: "Heeeeere"
      }
    };

    expect(camelKeys(deep)).to.deep.equal({
      snakeCase: "Fnord",
      deepObject: {
        moarSnakes: "Heeeeere"
      }
    });
  });

  it('should deep transform arrays too', () => {
    const deepArray = {
      snake_case: "FNord",
      deep_array: [
        {snake_here: "SNAKE1"},
        {snake_here: "SNAKE2"},
      ]
    };
    expect(camelKeys(deepArray)).to.deep.equal({
      snakeCase: "FNord",
      deepArray: [
        {snakeHere: "SNAKE1"},
        {snakeHere: "SNAKE2"},
      ]
    });
  });
});
