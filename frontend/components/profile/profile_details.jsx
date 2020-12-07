import React from "react";
import { Link, NavLink } from "react-router-dom";

const ProfileDetails = ({ user }) => {
  const name = (user.firstName) ? (user.firstName + " " + user.lastName) : user.username;
  const profilePhoto = (user.photo) ? (
    <img src={user.photo} alt="profile-pic" id="profile-photo" />
  ) : (
    <i className="fas fa-user-circle" id="profile-photo" style={{ "color": "#8e8e8e" }}></i>
  );

  return (
    <div id="profile-details-background">
      <div id="profile-details">
        <div id="profile-basics-container">
          <div id="profile-basics">
            <div id="profile-name-container">
              <div id="profile-name">
                {name}
              </div>
            </div>
          </div>
        </div>
        <div id="profile-image-container-outer">
          <div id="profile-image-frame">
            {profilePhoto}
          </div>
        </div>
      </div>
    </div>
  )
}

export default ProfileDetails;