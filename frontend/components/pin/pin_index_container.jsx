import { connect } from "react-redux";
import PinIndex from "./pin_index";

import { fetchPins } from "../../actions/pin_actions";
import { openModal } from "../../actions/modal_actions";

const mapStateToProps =(state, ownProps) => {
  return {
    pins: ownProps.pins,
    currentUserId: state.session.id
  };
};

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  openNewBoardPin: pinId => dispatch(openModal("new-board-pin", pinId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);