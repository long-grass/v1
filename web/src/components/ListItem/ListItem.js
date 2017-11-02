import React from 'react';
import { connect } from 'react-redux';
import moment from 'moment';
import { getEvent } from '../../actions/event';
import styles from './ListItem.css';



class ListItem extends React.Component  {

    render() {
      console.log(this.props)
    const event = this.props.event;
    const icon = this.props.icon;
    const history = this.props.history;
    const time = moment(event.time).format("Do MMM"); 
  

    
    // console.log(iconUrl)
    return (
      <li id={event.id} className={styles.calenderEvent}>
        <a onClick={() =>  this.props.getEvent(event.id,history)}>
          <div className={styles.itemDate}>
            <span className={styles.itemTime}>{time}</span>
            <div className={styles.imageContainer}>
            <img src={icon}/>
            </div>
          </div>
          <div className={styles.itemTitle}>
            <div className={styles.itemInner}>
              <h3>{event.title}
                
              </h3>
              
            </div>
          </div>
        </a>
      </li>
    );
  }
}

export default connect(null, {getEvent})(ListItem);


