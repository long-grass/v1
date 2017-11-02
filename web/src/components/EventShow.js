import React from 'react'
const classNames = require('classnames');

import Title from './EventDetail/Title.js';
import CloseIt from './EventDetail/CloseIt.js';
import SectionOne from './EventDetail/SectionOne.js';


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
      <Title title={event.title}> </Title>
      <SectionOne event={event}/>
    </div>
  )

}

