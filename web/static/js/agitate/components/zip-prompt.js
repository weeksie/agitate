import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import actions from '../actions';
import cx from 'classnames';

import Logo from './logo';

const { captureZip } = actions;

class ZipPrompt extends React.Component {
  handleClick(e) {
    e.preventDefault();
    const { dispatch } = this.props;
    dispatch(captureZip(this.zipInput.value));
  }

  render() {
    const classNames = cx({
      'zip-prompt': true,
      'error': !!this.props.isError
    });

    return (
      <div className={ classNames }>
        <Logo />
        <div className="zip-prompt-blurb">
          <h2>Does your vote count?</h2>
          <p>
            Political parties rig elections by gerrymandering, redrawing the congressional district maps to preserve their power. We calculate vote efficiency to determine how gerrymandered your district is.
          </p>
          <p><small>Learn More</small></p>
        </div>

        <div className="zip-prompt-form">
          <p>Enter Zip Code To Find District</p>
          <input type="text"
                 className="zip-prompt-input"
                 placeholder="Zip Code"
                 ref={ (ref) => { this.zipInput = ref } } />
          <button className="zip-prompt-button"
                  onClick={this.handleClick.bind(this)}></button>
        </div>
      </div>
    );
  }
}


export default connect()(ZipPrompt);
