import React from 'react';
import BigLogo from './big-logo';
import HomeBlurb from './home-blurb';
import ZipPrompt from './zip-prompt';
import LearnMore from './learn-more';

export default ({ match }) => {
  const learn = <LearnMore />,
        home  = [ <BigLogo key="1" />, <HomeBlurb key="2" />, <ZipPrompt key="3" /> ];

  return (
    <div className="home-screen">
      { match.url === '/learn-more'? learn : home }
    </div>
  );
};
