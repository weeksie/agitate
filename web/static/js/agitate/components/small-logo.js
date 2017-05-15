import React from 'react';
import { Link } from 'react-router-dom';

export default (_props) => (
  <div className="small-logo">
    <Link to="/"><img src="/images/agitate-logo.png" /></Link>
    <h1>Agitate</h1>
  </div>
);
