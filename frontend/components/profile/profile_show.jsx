import React from "react";
import { Link } from "react-router-dom";

import ProfileHeader from "./profile_header";
import ProfileContent from "./profile_content";

class ProfileShow extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { currentUser, users, username, boards, pins, openModal, closeModal } = this.props;
    const user = users.find(user => user.username === username);

    return (
      <div id="profile-background">
        <div id="profile-container">
          <div id="profile">
            <div id="profile-header-container">
              <ProfileHeader
                currentUser={currentUser}
                user={user}
                openModal={openModal}
                closeModal={closeModal}
              />
            </div>
            <div id="profile-content-container">
              <ProfileContent
                user={user}
                boards={boards}
                pins={pins}
              />
            </div>
          </div>
        </div>
      </div>
    )
  }
};

export default ProfileShow;