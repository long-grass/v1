const API_URL = `http://${window.location.host}`;

export const getEvents = () => {
  const endpoint = `${API_URL}/parties`
  return dispatch => {
    return fetch(endpoint)
    .then(response => response.json())
    .then(events => dispatch(setEvents(events)))
    .catch(error => console.log(error))
  }
}

export const setEvents = events => {
  return {
    type: 'GET_EVENTS_SUCCESS',
    events,
  }
}