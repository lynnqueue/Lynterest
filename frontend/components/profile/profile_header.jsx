import React from "react";
import ProfileDetails from "./profile_details";

const ProfileHeader = ({ user }) => {

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