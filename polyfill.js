/*global self, global, require*/
if (typeof fetch === 'function') {
  return;
}
var local = (typeof global !== 'undefined') ? global : self;
var _fetch = require('./');
local.fetch = _fetch;
local.fetch.polyfill = true;
local.Request = _fetch.Request;
local.Response = _fetch.Response;
local.Headers = _fetch.Headers;
