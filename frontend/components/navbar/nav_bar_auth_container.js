import React from "react";
import { connect } from "react-redux";
import NavBarAuth from "./nav_bar_auth";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],
});

export default connect(mapStateToProps)(NavBarAuth);