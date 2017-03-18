import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { captureZip } from '../actions';

class ZipPrompt extends React.Component {
  handleClick(e) {
    e.preventDefault();
    const { dispatch } = this.props;
    dispatch(captureZip(this.zipInput.value));
  }
  
  render() {
    return (
      <div className="zip-prompt">
          <div className="zip-prompt-form">
              <input type="text"
                     className="zip-prompt-input"
                     placeholder="enter your zip code"
                     ref={ (ref) => { this.zipInput = ref } } />
              <button className="zip-prompt-button"
                      onClick={this.handleClick.bind(this)}>Find Districts</button>
          </div>
      </div>
    );
  }
}


export default connect()(ZipPrompt);
