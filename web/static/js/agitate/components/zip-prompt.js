import React, { PropTypes } from 'react';
import { connect } from 'react-redux';
import { captureZip } from '../actions';
import cx from 'classnames';

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
