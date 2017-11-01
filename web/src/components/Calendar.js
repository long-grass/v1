import React from 'react';
import { connect } from 'react-redux';

const Calendar = ({events}) => {

  return (
    <div className="left-hand-side events-list">
      <h2 className="calender-header">Events</h2>
      <ul>    
        {events ? events.map((event, index) => event.title) : null}
      </ul>       
    </div>
    );
  }

const mapStateToProps = (state) => {
  return ({
      events: state.events,
    })
}

export default connect(mapStateToProps, {})(Calendar);
