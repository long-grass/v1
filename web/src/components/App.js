import React from 'react';
import { connect } from 'react-redux';
import {
  BrowserRouter as Router,
  Route,
  Switch,
} from 'react-router-dom';
const classNames = require('classnames');

import indexStyle from  '../css/index.css'
import eventStyle from './Event.css'

import Event from './Event';
import Calendar from './Calendar.js'

const App = (props) => {

  const rightHandStyle =  classNames(eventStyle.eventInfo, 
    eventStyle.primaryColour, 
    eventStyle[props.event.openState],
    eventStyle[props.event.eventColourScheme]
  );
  

  return (
    <Router>
        <div className={indexStyle.siteWrapper}>
          <Route component={Calendar}/>
          <div id="right-hand-side" className={rightHandStyle}>
            <Switch>
              <Route exact path="/" />
              <Route path="/events/:id" component={Event} />
            </Switch>
          </div>
        </div>
    </Router>
  );
}

const mapStateToProps = (state) => {
  return ({
      event: state.event
    })
}

export default connect(mapStateToProps, {})(App);

