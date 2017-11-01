import React from 'react';
import { connect } from 'react-redux';

const Event = ({event}) => {
  console.log(event)

  return (
    <div className="left-hand-side events-list">
      <h2 className="calender-header">Event</h2>  
        {event.id ? event.title : null}    
    </div>
    );
  }

const mapStateToProps = (state) => {
  return ({
      event: state.event,
    })
}

export default connect(mapStateToProps, {})(Event);