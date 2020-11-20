import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import nav from './nav';

const mSTP = ({ session, entities: { users } }) => ({
    currentUser: users[session.currentUserId]
});

const mDTP = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(mSTP, mDTP)(nav);