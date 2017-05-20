import React from 'react';
import SmallLogo from './small-logo';
import InfoBlurb from './info-blurb';
import ZipPrompt from './zip-prompt';

export default (props) => (
  <div className="learn-more">
    <SmallLogo />
    <InfoBlurb title="Map Irregularity">
      Every ten years, state electoral districts are redrawn to ensure that everyone’s vote counts, regardless of whether they live in a densely or sparsely populated area. That’s great in principle, but what often happens is that the party in power rigs the map. Tactics for putting the opposition at a disadvantage (gerrymandering against them) includes “packing” the opposition’s voters into a small number of districts so they have fewer representatives, or “cracking” them into multiple districts where the majority of voters are their own supporters. To achieve this cracking & packing, maps are redrawn according to voting blocs instead of geography or communities, creating irregular, sprawling districts.
    </InfoBlurb>
    <InfoBlurb title="The Efficiency Gap">
      The efficiency gap looks at how many votes a party wastes to win a district, to see if one party has a systemic advantage. To calculate this, first the “wasted” votes are determined. A vote for a losing party is considered wasted, as are votes for the winning party in excess of what was needed to win. The number of wasted votes in an election is divided by the total votes. The resulting percentage is the “efficiency gap”.  A higher efficiency gap indicates a potentially unconstitutional advantage for the winning party.
    </InfoBlurb>
    <ZipPrompt />
  </div>
);
