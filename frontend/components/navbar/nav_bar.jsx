import React from "react";
import { Link, NavLink } from "react-router-dom";
import SearchContainer from "../search/search_container";

class NavBar extends React.Component {
  constructor(props) {
    super(props);

  }

  componentWillUnmount() {
    location.reload(true);
  }

  render() {
    const { currentUser, logout } = this.props;

    const profilePhoto = (currentUser.photo) ? (
      <img src={currentUser.photo} alt="profile-pic" id="profile-icon" />
    ) : (
      <i className="fas fa-user-circle" id="profile-icon" style={{"color": "#8e8e8e"}}></i>
    );
    
    return !currentUser ? (
      null
    ) : (
      <div className="nav-bar-background">
        <div className="nav-bar-wrapper">
          <header className="nav-bar-container">

            <div className="nav-bar-button" id="home">
              <Link to="/" className="nav-bar-link">
                <div className="icon-container-shadow">
                  <div className="icon-container">
                    <img src={window.logoUrl} alt="lynterest-logo"/>
                  </div>
                </div>
              </Link>
            </div>

            <div className="nav-bar-search-container" id="search">
              <SearchContainer />
            </div>

            <div className="right-nav-bar">

              <div className="nav-bar-button" id="profile">
                <NavLink to={`/${currentUser.username}`} className="nav-bar-link">
                  <div className="icon-container-shadow">
                    <div className="icon-container">
                      <div id="profile-icon-frame">
                        {profilePhoto}
                      </div>
                    </div>
                  </div>
                </NavLink>
              </div>

              <div className="nav-bar-spacer" id="spacer"></div>

              <div className="nav-bar-button" id="options">
                <Link to="/" className="nav-bar-link" onClick={logout}>
                  <div className="icon-container-shadow">
                    <div className="icon-container">
                      <i className="fas fa-sign-out-alt" id="options-icon"></i>
                    </div>
                  </div>
                </Link>
              </div>

            </div>
          </header>
        </div> 
      </div>
    )
  }
}

export default NavBar;