import React from 'react';
import { Link } from 'react-router-dom';
import LogInFormContainer from '../session_form/login_form_container';
import SignUpFormContainer from '../session_form/signup_form_container';

const nav = ({ currentUser, logout }) => {
    if (!currentUser) {
        return (
            <div>
                <Link to='/signup'>Sign Up</Link>
                <Link to='/login'>Log In</Link>
            </div>
        )
    }
}

export default nav;