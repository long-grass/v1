const API_URL = `http://${window.location.host}`;

export const getEvent = (eventId, history) => {
  return dispatch => {
    return fetch(`${API_URL}/parties/${eventId}`)
    .then(response => response.json())
    .then(event => {     
      event.openState = "show-it"
      event.eventColourScheme = `${event.kind.toLowerCase()}Background`
      history.push(`/events/${eventId}`)
      return dispatch(setEvent(event))
    })
    .catch(error => console.log(error))
  }
}

export const setEvent = event => {
  return {
    type: 'GET_EVENT_SUCCESS',
    event,
  }
}

export const closeEvent = (beer,history) => {
  history.push(`/`)
  return {
    type: 'CLOSE_EVENT',
    beer,
  }
}