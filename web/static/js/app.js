// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"

import React from 'react';
import { render } from 'react-dom';

import ApolloClient, { createNetworkInterface } from 'apollo-client';
import { ApolloProvider } from 'react-apollo';
import { Provider } from 'react-redux';
import { createStore } from 'redux';
import { Router, browserHistory } from 'react-router';

import AppStore from './reducers';


import Agitate from './components/agitate';

const client = new ApolloClient({
  networkInterface: createNetworkInterface({ uri: '/graphql' })
});

const AppRoutes = {
  path: '/',
  component: Agitate
}

render(<ApolloProvider client={client}>
    <Provider store={createStore(AppStore)}>
        <Router routes={AppRoutes} history={browserHistory} />
    </Provider>
</ApolloProvider>, document.getElementById('app'));
