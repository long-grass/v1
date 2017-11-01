import React from 'react';
import { connect } from 'react-redux';
import { getEvents } from '../actions/events';
import ListItem from './ListItem/ListItem';
import styles from './Calendar.css';
const classNames = require('classnames');

class Calendar extends React.Component  {
  
  componentWillMount () {
    this.props.getEvents()
  }
  render (){ 

    const events = this.props.events.sort((a,b) => a.time < b.time ? -1 : 1)
    

    const leftHand = classNames(styles.leftHandSide, styles.eventsList)
    return (
      <div className={leftHand}>
        <h2 className={styles.calenderHeader}>Events</h2>
        <ul>    
          {this.props.events ? 
            events.map((event, index) => 
              <ListItem
                event={event}
                key={index}
                history={this.props.history}
          />
          ) : null}
        </ul>       
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return ({
      events: state.events,
    })
}

export default connect(mapStateToProps, {getEvents})(Calendar);
