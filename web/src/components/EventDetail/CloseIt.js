import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { closeEvent } from '../../actions/event'
import MdHighlightOff from 'react-icons/lib/md/highlight-off';
import styles from './SectionOne.css'


class CloseIt extends React.Component {

  constructor(props) {
    super(props)
    this.closeThis = this.closeThis.bind(this);
  }


  closeThis(e){
    const event = this.props.event;
    const history = this.props.history
    e.preventDefault()
    this.props.closeEvent(event,history)
  }

  render() {       
    return (
      <Link to="/" id="close-it" className={styles.closeIt} onClick={this.closeThis}>
        <MdHighlightOff size={40} />
      </Link>
    );
  }
}



const mapStateToProps = (state) => {
  console.log(state)
    return ({
        event: state.event,
      })
  }

export default connect(mapStateToProps, {closeEvent})(CloseIt);
