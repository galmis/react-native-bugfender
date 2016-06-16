var React = require('react-native');

var RNBugfender = React.NativeModules.RNBugfender;

var Bugfender = function() {

  // call when finished launching
  function initialise() {
    RNBugfender.initialise();
  }

  function info(logText) {
    RNBugfender.info(logText);
  }

  function warning(logText) {
    RNBugfender.warning(logText);
  }

  function error(logText) {
    RNBugfender.error(logText);
  }

  return {
    initialise,
    info,
    warning,
    error
  }

}();

module.exports = Bugfender;
