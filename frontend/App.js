import React, { Component } from 'react';
import { Router } from 'react-router-dom';
import AccessAlarmIcon from '@material-ui/icons/AccessAlarm';
import Button from '@material-ui/core/Button';
import CssBaseline from '@material-ui/core/CssBaseline';

import Routes from './Routes';

export default class App extends Component {
    render () {
        return (
        <>
            <CssBaseline />
            <Router history={browserHistory}>
            <Routes />
            </Router>
        </>
        );
    }
}