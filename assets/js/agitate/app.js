import "phoenix_html" // devvvvvv

import React from 'react';
import { render } from 'react-dom';
import { Provider } from 'react-redux';

import store from './reducers';
import Agitate from './components/agitate';

const AppRoutes = {
  path: '/',
  component: Agitate
}


render(<Provider store={store}><Agitate /></Provider>, document.getElementById('app'));
