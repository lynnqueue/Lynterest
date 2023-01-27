import React from "react";
import PinIndexItem from "./pin_index_item";
// const shuffle = require("shuffle-array");
// const masonryEvents = ["load", "resize"];

class PinIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { page, pins, currentUserId, user, openEditPin, openNewBoardPin } = this.props;
    const pinIndexItems = pins.map(pin => (
      <PinIndexItem
        key={pin.id}
        page={page}
        pin={pin}
        userId={currentUserId}
        user={user}
        openEditPin={openEditPin}
        openNewBoardPin={openNewBoardPin}
      />
    ));
    if (pinIndexItems.length) {
      return (
        <div className="pin-index container">
          <div className="pin-index" id="grid-container">
            <div className="pin-index masonry" id="grid">
              {pinIndexItems}
            </div>
          </div>
        </div>
      );
    } else {
      return (
        <div>
          <i className="fa fa-spinner loader" aria-hidden="true"></i>
        </div>
      )
    };
  };
};

export default PinIndex;