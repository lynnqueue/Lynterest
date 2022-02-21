import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import PinIndexContainer from "../pin/pin_index_container";

// const shuffle = require('shuffle-array');

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
    debugger;
    return (
      <div className={`home-container ${klass}`}>
        {spacer}
        <div onLoad={this.spinner} >
          <PinIndexContainer
            pins={pins}
            page="home"
          />
        </div>
      </div>
    )
  }
}

export default Home;