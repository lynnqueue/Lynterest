import { connect } from "react-redux";
import React from "react";
import ProfileShow from "./profile_show";

const mapStateToProps = (state, ownProps) => ({
  users: Object.values(state.entities.users),
  username: ownProps.match.params.username,
  boards: Object.values(state.entities.boards),
  boardsPins: state.entities.boardsPins,
  pins: Object.values(state.entities.pins),
});


export default connect(mapStateToProps, null)(ProfileShow);