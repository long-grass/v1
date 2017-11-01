import React from 'react';
import { connect } from 'react-redux';
import { getEvent } from '../../actions/event';
import styles from './ListItem.css';

class ListItem extends React.Component  {

    render() {
    const event = this.props.event;
    const history = this.props.history;
    // debugger;
    console.log(styles)
    return (
      <li id={event.id} className="calender-event">
        <a onClick={() =>  this.props.getEvent(event.id,history)}>
          <div className="calender-event-item-date">
            <span className="meta-data">{event.time}</span>
          </div>
          <div className={styles.bob}>gooooooooooooooooooooo</div>
          <div className="calender-event-item-title">
            <div className="calender-event-item-inner">
              <h3>{event.title}</h3>
            </div>
          </div>
        </a>
      </li>
    );
  }
}

export default connect(null, {getEvent})(ListItem);


