import React from 'react'
const classNames = require('classnames');

import CloseIt from './EventDetail/CloseIt.js';


export const EventShow = ({event,history}) => {

  let openState
  if (event.eventColourScheme && event.openState){
    openState = "show-it"
  } else {
    openState = ''
  }
  const rightHand =  classNames(openState, event.eventColourScheme);
  return (
    <div className={rightHand}>
      <CloseIt history={history} event={event}/>
    </div>
  )

}

