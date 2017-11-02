import React from 'react';
import { connect } from 'react-redux';
import { getEvents } from '../actions/events';
import ListItem from './ListItem/ListItem';
import styles from './Calendar.css';
const classNames = require('classnames');

const drinksText = require('../assets/images/drinks-text.png');

class Calendar extends React.Component  {
  
  componentWillMount () {
    this.props.getEvents()
  }
  render (){ 

    const events = this.props.events.sort((a,b) => a.time < b.time ? -1 : 1)
    const icons = {
      cocktails: require('../assets/images/cocktail-icon.png'),
      beers: require('../assets/images/beer-icon.png'),
      coffees: require('../assets/images/coffee-icon.png'),
      milkshakes: require('../assets/images/milkshake-icon.png')
      }
    

    const leftHand = classNames(styles.leftHandSide, styles.eventsList)
    return (
      <div className={leftHand}>
        <h2 className={styles.calenderHeader}>
          <div className={styles.drinksTextContainer}><img src={drinksText}/></div>
        </h2>
        <ul>    
          {this.props.events ? 
            events.map((event, index) => 
              <ListItem
                event={event}
                key={index}
                history={this.props.history}
                icon={icons[event.kind.toLowerCase()]}
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
