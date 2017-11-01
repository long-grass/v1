const initialState = {
  id:null,
  title:'nothing'
}

export default (state = initialState, action) => {
  switch (action.type) {
    case 'GET_EVENT_SUCCESS':
      return action.event;
      case 'CLOSE_UP':
      const eventState = Object.assign({}, action.event, {openState:''});
      return beerState
    default:
      return state;
  }
}