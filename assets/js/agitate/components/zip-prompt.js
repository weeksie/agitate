import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { actions } from '../actions';
import cx from 'classnames';

import { withRouter } from 'react-router-dom';

const { captureZip } = actions;

class ZipPrompt extends React.Component {
  handleKeyPress(e) {
    const { dispatch, isReady, history } = this.props;
    if(isReady && e.key === 'Enter') {
      e.preventDefault();
      history.push(`/zip/${this.props.zipCode}`);
    } else {
      dispatch(captureZip(this.zipInput.value));
    }
  }

  handleClick(e) {
    e.preventDefault();
    if("geolocation" in navigator) {
      navigator.geolocation.getCurrentPosition(position => {
        const { latitude, longitude } = position.coords;
        this.props.history.push(`/loc/${latitude},${longitude}`);
      });
    } else {
      // alert (no pos avail)
    }
  }

  render() {
    const classNames = cx({
      'zip-prompt': true,
      'is-ready': this.props.isReady,
      'is-error': !!this.props.error
    });

    return (
      <div className={ classNames }>
        <div className="zip-prompt-form">
          <p>Enter Zip Code To Find District</p>
          <input type="text"
                 className="zip-prompt-input"
                 placeholder="Zip Code"
                 onKeyUp={this.handleKeyPress.bind(this)}
                 ref={ (ref) => { this.zipInput = ref } } />

          <button className="zip-prompt-button"
                  onClick={this.handleClick.bind(this)}></button>
        </div>
      </div>
    );
  }
}

function mapPropsToZip({ zip }) {
  return zip;
}

export default withRouter(connect(mapPropsToZip)(ZipPrompt));
