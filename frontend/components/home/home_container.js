import { connect } from 'react-redux';
import Home from './home';


import { fetchPins } from '../../actions/pin_actions';
import { fetchAllBoardsPins } from '../../actions/board_pin_actions';
import { fetchSingleUser } from '../../actions/user_actions';


const mapStateToProps = state => {
  const currentUserId = state.session.id;
  const allPins = Object.values(state.entities.pins);
  const pins = (currentUserId) ? (
    allPins.filter(pin => pin.userId !== currentUserId)
  ) : (
    allPins.slice(0, 30)
  );
  return { currentUserId, pins};
};

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  fetchAllBoardsPins: () => dispatch(fetchAllBoardsPins()),
  fetchSingleUser: id => dispatch(fetchSingleUser(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(Home);