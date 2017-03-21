import React from 'react';
import { fetchTwitterImage } from '../actions';
import { connect } from 'react-redux';

/* Twitter has a problem with the redirect for profile image urls on
twitter. Keeping for now but this is slated for removal. */

class RepresentativeImage extends React.Component {
  componentWillMount() {
    const { twitter, dispatch } = this.props;
    dispatch(fetchTwitterImage(`https://twitter.com/${twitter}/profile_image?size=bigger`));
  }
  render() {
    const { twitterURL } = this.props;
    if(twitterURL) {
      return (<img className="representative-image" src={twitterURL} />);
    } else {
      return (<img className="representative-image" src="/images/default-representative.png" />)
    }
  }
}

export default connect()(RepresentativeImage);
