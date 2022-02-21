export const OPEN_MODAL = 'OPEN_MODAL';
export const CLOSE_MODAL = 'CLOSE_MODAL';

export const openModal = (modal, objectId) => {
  return {
    type: OPEN_MODAL,
    modal,
    objectId
  };
};

// reset modal slice of state to null
export const closeModal = () => {
  return {
    type: CLOSE_MODAL
  };
};