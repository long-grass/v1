import React from 'react'

import CloseIt from './EventDetail/CloseIt.js';


export const EventShow = ({event,history}) => {

  return (
    <div>{event.title}
      <CloseIt history={history} event={event}/>
    </div>
  )

}

