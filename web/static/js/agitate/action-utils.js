import { isObject, isArray, camelCase, isFunction, isError } from 'lodash';

export function createActions(mapping) {
  let types = { },
      actions   = { },
      rest      = Array.prototype.slice.call(arguments, 1);

  Object.keys(mapping).forEach((property) => {
    types[property] = property;
    actions[camelCase(property)] = function() {
      const result = mapping[property].apply(mapping[property], arguments);
      if(isFunction(result)) {
        return result;
      } else {
        const { payload, meta } = result;
        return {
          payload,
          meta,
          type: property,
          error: isError(payload)
        }
      }
    }
  });

  rest.forEach((property) => {
    types[property]               = property;
    actions[camelCase(property)] = x => ({
      type: property,
      payload: x
    });
  });

  return {
    types,
    actions
  }
}

export function camelKeys(object) {
  return Object.entries(object).reduce(descend, { });

  function descend(obj, [k, v]) {
    obj[camelCase(k)] = toValue(v);
    return obj;
  }

  function toValue(v) {
    if (isArray(v)) {
      return v.map(toValue);
    } else if(isObject(v)) {
      return camelKeys(v);
    } else {
      return v;
    }
  }
}
