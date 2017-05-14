import React, { PropTypes } from 'react';
import { connect }          from 'react-redux';

export default function withStateProvider(Component) {
  class StateProvider extends React.Component {
    componentWillReceiveProps(nextProps) {
      if(nextProps.id !== this.props.id) {
        loadState(nextProps.id);
      }
    }

    render() {
      return <Component districts={this.props.districts} />;
    }
  }

  function mapStateToProps({ state }) {
    return state;
  }

  return connect(mapStateToProps)(StateProvider);
}
