import React from 'react';

const ListItem = ({event,history}) => {
  
  return (
    <li id={event.id} className="calender-event">
      <a onClick={() =>  loadRepo(event.id,history)}>
        <div className="calender-event-item-date">
          <span className="meta-data">{event.time}</span>
        </div>
        <div className="calender-event-item-title">
          <div className="calender-event-item-inner">
            <h3>{event.title}</h3>
          </div>
        </div>
      </a>
    </li>
  );
}

export default ListItem


