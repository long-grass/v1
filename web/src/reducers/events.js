const initialState = []

export default (state = initialState, action) => {
  switch (action.type) {
    case 'GET_EVENTS_SUCCESS':
      return action.events;
    default:
      return state;
  }
}