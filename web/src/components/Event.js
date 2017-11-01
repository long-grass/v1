import React from 'react';
import { connect } from 'react-redux';
import { getEvent } from '../actions/event';
import { EventShow} from '../components/EventShow.js';

import styles from './Event.css'

class Event extends React.Component {

  componentWillMount(){
    const event = this.props.match.params.id
    const history = this.props.history
    this.props.getEvent(event,history)
  }

  render () {
    return (
      <div>
          {this.props.event.id ? 
            <EventShow history={this.props.history} event={this.props.event}/> 
            : null
          }    
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