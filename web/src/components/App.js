import React from 'react';
import { connect } from 'react-redux';
import {
  BrowserRouter as Router,
  Route,
  Switch,
} from 'react-router-dom';
const classNames = require('classnames');

import Event from './Event';
import Calendar from './Calendar.js'

const App = (props) => {

  const rightHandState = ''

  return (
    <Router>
      <div className="App"> 
        <div className="site-wrapper">
          <Route component={Calendar}/>
          <div id="right-hand-side" className={rightHandState}>
            <Switch>
              <Route exact path="/" />
              <Route path="/events/:id" component={Event} />
            </Switch>
          </div>
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

