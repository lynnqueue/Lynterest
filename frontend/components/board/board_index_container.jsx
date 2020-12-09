import { connect } from "react-redux";
import { fetchSingleUser } from "../../actions/user_actions";
import { fetchBoards, fetchBoard } from "../../actions/board_actions";
import { fetchAllBoardsPins } from "../../actions/board_pin_actions";
import { openModal } from "../../actions/modal_actions";
import BoardIndex from "./board_index";

const mapStateToProps = (state, ownProps) => ({
  boards: ownProps.boards,
  pins: state.entities.pins,
  currentUser: state.entities.users[state.session.id],
  user: ownProps.user
});

const mapDispatchToProps = dispatch => ({
  fetchSingleUser: userId => dispatch(fetchSingleUser(userId)),
  fetchBoards: () => dispatch(fetchBoards()),
  fetchAllBoardsPins: () => dispatch(fetchAllBoardsPins()),
  fetchBoard: (boardId) => dispatch(fetchBoard(boardId)),
  openEditBoard: (boardId) => dispatch(openModal("edit-board", boardId))
});

export default connect(mapStateToProps, mapDispatchToProps)(BoardIndex);

