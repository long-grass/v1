const initialState = {
  id:null,
  title:'nothing'
}

export default (state = initialState, action) => {
  switch (action.type) {
    case 'GET_EVENT_SUCCESS':
      return action.event;
    default:
      return state;
  }
}