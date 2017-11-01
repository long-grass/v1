import React from 'react';
import { connect } from 'react-redux';
import { getEvent } from '../actions/event';
import CloseIt from './EventDetail/CloseIt.js';

class Event extends React.Component {

  componentWillMount(){
    this.props.getEvent(this.props.match.params.id,this.props.history)
  }

  render () {
    const history = this.props.history
    return (
      <div className="left-hand-side events-list">
        <h2 className="calender-header">Event</h2>  
           <CloseIt history={history}/>
          {this.props.event.id ? this.props.event.title : null}    
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return ({
      event: state.event,
    })
}

export default connect(mapStateToProps, {getEvent})(Event);