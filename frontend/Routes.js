import React from 'react';
import { Switch, Redirect } from 'react-router-dom';
// Layouts
import { Main as MainLayout } from './layouts';
// Views 
import { SignIn as SignInView } from './views'

const Routes = () => {
    return (
        <Switch>
            <Redirect
                exact
                from="/"
                to="/sign-in"
            />
            <RouteWithLayout
                component={SignInView}
                exact
                layout={MainLayout}
                path="/sign-in"
            />
        </Switch>
    )
}

export default Routes;
