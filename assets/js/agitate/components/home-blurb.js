import React from 'react';
import { Link } from 'react-router-dom';

export default (props) => (
  <div className="home-blurb">
    <h2>Does your vote count?</h2>
    <p>
      Political parties rig elections by gerrymandering, redrawing the congressional district maps to preserve their power. We calculate vote efficiency to determine how gerrymandered your district is.
    </p>
    <p className="learn-more"><Link to="/learn-more">Learn More</Link></p>
  </div>
);
