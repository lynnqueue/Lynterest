import React from "react";

// import ProfileNavBar from "./profile_nav_bar";
import ProfileDetails from "./profile_details";

const ProfileHeader = ({ currentUser, user, openModal, closeModal }) => {

  return (
    <div id="profile-header">
      <div id="profile-header-upper">
        <div id="profile-details-container">
          <ProfileDetails user={user} />
        </div>
      </div>

    </div>
  )
}

export default ProfileHeader;

ProfileHeader.defaultProps = {
  user: {
    username: '',
    firstName: '',
    lastName: ''
  }
}