import React from 'react';
import moment from 'moment';


const classNames = require('classnames');

import './SectionOne.css'

const SectionOne = ({event}) => {
 console.log(event)
 const date = moment(event.time).format('MMMM Do, H:mm')
  return (
    <div className="g">
    <p>{event.kind}</p>
    <p>{date}</p>
    <p>{event.guests.length} guests</p>
    </div>
  );
}

export default SectionOne



