import React from 'react';
import PinIndexContainer from "../pin/pin_index_container";

const shuffle = require('shuffle-array');

class Home extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
      this.props.fetchPins();
  }

  render() {
    const { currentUserId, pins } = this.props;
    let spacer, klass;
    if (currentUserId === null) {
      klass = "no-scroll";
      spacer = null;
    } else {
      klass = "";
      spacer = <div id="spacer"></div>;
    };

    const otherPins = shuffle(pins.slice(0, 60));

    return (
      <div className={`home-container ${klass}`}>
        {spacer}
        <PinIndexContainer
          pins={otherPins}
          page="home"
        />
      </div>
    )
  }
}

export default Home;