import {
    RECEIVE_PINS,
    RECEIVE_PIN,
    REMOVE_PIN
} from "../actions/pin_actions";

const pinsReducer = (oldState = {}, action) => {
    Object.freeze(oldState);
    let nextState = Object.assign({}, oldState);

    switch (action.type) {
        case RECEIVE_PINS:
            return action.pins; 
        case RECEIVE_PIN:
            const newPin = { [action.pin.id]: action.pin };
            return Object.assign(nextState, newPin);
        case REMOVE_PIN:
            delete nextState[action.id];
            return nextState;
        default:
            return oldState;
    }
}

export default pinsReducer;