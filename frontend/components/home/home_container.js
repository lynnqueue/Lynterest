import { connect } from 'react-redux';
import Home from './home';
import { fetchPins } from '../../actions/pin_actions';
// import { fetchAllBoardsPins } from '../../actions/board_pin_actions';
// import { fetchSingleUser } from '../../actions/user_actions';

const mapStateToProps = state => {
  const currentUserId = state.session.id;
  const allPins = Object.values(state.entities.pins)
  const pins = (currentUserId) ? (
    allPins.filter(pin => pin.userId !== currentUserId)
  ) : (
    allPins
  );
  debugger;
  return { currentUserId, pins };
};

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins())
});

export default connect(mapStateToProps, mapDispatchToProps)(Home);