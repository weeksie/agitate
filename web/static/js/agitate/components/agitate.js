import React from 'react';

import { BrowserRouter as Router,
         Route } from 'react-router-dom';

import MapScreen from './map-screen';
import HomeScreen from './home-screen';

export default (props) => (
  <Router>
    <div className="agitate">
      <Route exact path="/"                  component={HomeScreen} />
      <Route path="/learn-more"              component={HomeScreen} />
      <Route path="/zip/:zipCode"            component={MapScreen} />
      <Route path="/loc/:lat,:lon"           component={MapScreen} />
      <Route path="/district/:state/:number" component={MapScreen} />
    </div>
  </Router>
);
