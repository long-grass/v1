const initialState = [{
    id:1,
    title:'beer'
}]

export default (state = initialState, action) => {
  switch (action.type) {
    case 'GET_EVENTS_SUCCESS':
      return action.events;
    default:
      return state;
  }
}