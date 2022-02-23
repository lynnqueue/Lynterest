import React from 'react';
import { Link } from 'react-router-dom';

class PinShow extends React.Component {
  constructor(props) {
    super(props);
    this.goBack = this.goBack.bind(this);
  }

  componentDidMount() {
    // debugger;
    this.props.fetchPin(this.props.match.params.pinId);
  }

  goBack(e) {
    e.preventDefault();
    e.stopPropagation();
    this.props.history.goBack();
  }

  render() {
    const { pin, users, currentUserId, openEditPin, openNewBoardPin } = this.props;
    // if (!pin) return <div style={{"paddingTop": "65px"}}>Loading...</div>;
    const pinOwner = pin.user || {username: ""};
    const pinOwnerName = `${pinOwner.username}`;
    
    const editPinLink = (pin.userId === currentUserId) ? (
      <a
        className="pin-show edit-pin-link"
        onClick={() => openEditPin(pin.id)}
      >
        <i className="fas fa-pencil-alt edit-pin-icon"></i>
      </a>
    ) : (
      null
    );

    const pinCreditPhoto = (
      <Link
        to={`/${pinOwner.username}`}
        className="pin-show profile-link-frame"
      >
        <img src={pinOwner.photo} className="pin-show profile-link-photo"/>
        <div className="pin-show overlay"></div>
      </Link>
    );


    const pinCreditText = (
      <div className="pin-show credit-summary">
        <div className="pin-show credit-link">
          <strong>{pinOwnerName}</strong>
        </div>
        <span>&nbsp;saved to&nbsp;</span>
        <div className="pin-show credit-link">
          <strong>{pin.boardTitle}</strong>
        </div>
      </div>
    );
    // debugger;
    return (
      <div className="pin-show main-container"
        onClick={this.goBack}>
        <a
          className="pin-show back-button"
          onClick={this.goBack}
        >
          <i className="fas fa-arrow-left back-icon"></i>
        </a>
        <div className="pin-show wrapper"
          onClick={this.goBack}>
          <div className="pin-show container"
            onClick={(e) => e.stopPropagation()}>
            <div className="pin-show first-half">
              <div className="pin-show link-area">
                <div className="pin-show pin-link" >
                  <img src={pin.photo} className="pin-show pin-photo" />
                </div>
                <div className="pin-show overlay"></div>
              </div>
            </div>
            <div className="pin-show second-half">
              <div className="pin-show nav-bar">
                {editPinLink}
                <div></div>
                <a
                  className="pin-show save-board-pin-link"
                  onClick={() => openNewBoardPin(pin.id)}
                >
                  <div className="pin-show save-board-pin-text">Save</div>
                </a>
              </div>
              <div className="pin-show info">
                <div className="pin-show source-link">
                    <div>Uploaded by&nbsp;
                      <Link to={`/${pinOwner.username}`}>
                        <strong>{pinOwnerName}</strong>
                      </Link>
                    </div>
                </div>
                <div className="pin-show title">{pin.title}</div>

                <div className="pin-show description">
                  {pin.description}
                </div>
              </div>
              <div className="pin-show credit">
                {pinCreditPhoto}
                {pinCreditText}
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default PinShow;