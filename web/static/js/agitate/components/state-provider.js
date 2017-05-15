import React, { PropTypes } from 'react';
import { connect }          from 'react-redux';
import { actions }          from '../actions';

const { fetchState } = actions;

// NB: "State" as in US State/Administrative Zone

export default function withStateProvider(ChildComponent) {
  class StateProvider extends React.Component {
    constructor(props) {
      super(props);
      if(props.id) {
        props.dispatch(fetchState(props.id));
      }
    }
    componentWillReceiveProps(nextProps) {
      if(nextProps.id !== this.props.id && nextProps.id !== undefined) {
        this.props.dispatch(fetchState(nextProps.id));
      }
    }

    render() {
      const { districts, isFetching } = this.props.state;
      if(!districts || isFetching) {
        return <div />;
      } else {
        return <ChildComponent districts={districts} />;
      }
    }
  }

  function mapStateToProps({ state }, { id }) {
    return {
      state,
      id
    };
  }

  return connect(mapStateToProps)(StateProvider);
}
