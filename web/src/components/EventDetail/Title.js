import React, { Component } from 'react';

import style from './Title.css';

const Title = ({title}) => {
    return (
        <h2 className={style.title}>{title ? title : ""}</h2>
      );

}

export default Title;
