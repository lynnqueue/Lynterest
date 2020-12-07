import { connect } from "react-redux";
import React from "react";
import PinShow from "./pin_show";

import { fetchPin } from "../../actions/pin_actions";
import { closeModal, openModal } from "../../actions/modal_actions";

const mapStateToProps = (state, ownProps) => ({
  pin: state.entities.pins[ownProps.match.params.pinId],
  users: state.entities.users,
  currentUserId: state.session.id,
});

const mapDispatchToProps = dispatch => ({
  fetchPin: pinId => dispatch(fetchPin(pinId)),
  openNewBoardPin: pinId => dispatch(openModal("new-board-pin", pinId)),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(PinShow);

