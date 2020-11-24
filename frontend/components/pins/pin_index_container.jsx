import { connect } from "react-redux";
import PinIndex from "./pin_index";
import { fetchPins, clearPinErrors } from "../../actions/pin_actions";

const mSTP = (state) => {
    return({
        pins: Object.values(state.entities.pins),
        currentUser: state.entities.users[state.session.id]
    });
};

const mDTP = dispatch => {
    return ({
        fetchPins: () => dispatch(fetchPins()),
        clearPinErrors: () => dispatch(clearPinErrors())
    });
};

export default connect(mSTP, mDTP)(PinIndex);