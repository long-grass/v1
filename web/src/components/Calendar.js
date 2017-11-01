import React from 'react';
import { connect } from 'react-redux';
import { getEvents } from '../actions/events'


class Calendar extends React.Component  {
  
  componentWillMount () {
    this.props.getEvents()
  }
  render (){ 
    return (
      <div className="left-hand-side events-list">
        <h2 className="calender-header">Events</h2>
        <ul>    
          {this.props.events ? this.props.events.map((event, index) => event.title) : null}
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
