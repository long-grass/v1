import React, { Component } from 'react';

import style from './Title.css';

const Title = ({title}) => {
    return (
        <h2 id="non-league-football" className={style.title}>{title ? title : ""}</h2>
      );

}



export default Title;
