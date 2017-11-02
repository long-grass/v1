import React from 'react';
import moment from 'moment';


const classNames = require('classnames');

import styles from './SectionOne.css'

const SectionOne = ({event}) => {
 console.log(event)
 const date = moment(event.time).format('MMMM Do, H:mm')
  return (
    <div className="g">
    <p>{event.kind}</p>
    <p>{date}</p>
    <p>{event.guests.length} guests</p>
    <p>at {event.location.name}</p>
    <p>host is  {event.host.name}</p>
    <p>{event.event_comments.length} comments</p>
    </div>
  );
}

export default SectionOne



