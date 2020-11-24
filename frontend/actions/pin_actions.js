import * as PinAPIUtil from "../util/pin_api_util";

export const RECEIVE_PINS = "RECEIVE_PINS";
export const RECEIVE_PIN = "RECEIVE_PIN";
export const REMOVE_PIN = "REMOVE_PIN";
export const RECEIVE_PIN_ERRORS = "RECEIVE_PIN_ERRORS";
export const CLEAR_PIN_ERRORS = "CLEAR_PIN_ERRORS";

const receivePins = pins => ({
    type: RECEIVE_PINS,
    pins 
});

const receivePin = pin => ({
    type: RECEIVE_PIN,
    pin 
});

const removePin = id => ({
    type: REMOVE_PIN,
    id 
});

const receivePinErrors = errors => ({
    type: RECEIVE_PIN_ERRORS,
    errors
});

export const clearPinErrors = () => ({
    type: CLEAR_PIN_ERRORS
});

export const fetchPins = () => dispatch => {
    return PinAPIUtil.fetchPins()
        .then(pins => dispatch(receivePins(pins)))
};

export const fetchPin = id => dispatch => {
    return PinAPIUtil.fetchPin(id)
        .then(pin => dispatch(receivePin(pin)))
};

export const createPin = pin => dispatch => {
    return PinAPIUtil.createPin(pin).then(
        pin => dispatch(receivePin(pin)),
        err => dispatch(receivePinErrors(err.responsJSON))
    )
};

export const updatePin = pin => dispatch => {
    return PinAPIUtil.updatePin(pin).then(
        pin => dispatch(receivePin(pin)),
        err => dispatch(receivePinErrors(err.responsJSON))
    )
};

export const deletePin = id => dispatch => {
    return PinAPIUtil.deletePin(id).then(
        () => dispatch(removePin(id)),
        err => dispatch(receivePinErrors(err.responsJSON))
    )
};
