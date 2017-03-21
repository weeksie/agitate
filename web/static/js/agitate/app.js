import "phoenix_html" // devvvvvv

import React from 'react';
import { render } from 'react-dom';

import ApolloClient, { createNetworkInterface } from 'apollo-client';
import { ApolloProvider } from 'react-apollo';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
import { Router, browserHistory } from 'react-router';

import reducers from './reducers';
import Agitate from './components/agitate';

const client = new ApolloClient({
  networkInterface: createNetworkInterface({ uri: '/graphql' })
});

const AppRoutes = {
  path: '/',
  component: Agitate
}

const store = createStore(
  reducers,
  applyMiddleware(thunk)
);

render(<ApolloProvider client={client}>
    <Provider store={store}>
        <Router routes={AppRoutes} history={browserHistory} />
    </Provider>
</ApolloProvider>, document.getElementById('app'));
