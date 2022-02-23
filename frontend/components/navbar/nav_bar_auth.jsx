import React from "react";
import { Link } from "react-router-dom";

class NavBarAuth extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            currentUser: this.props.currentUser
        }
    }

    render() {
        return (
            <div className="nav-bar-background">
                <div className="nav-bar-wrapper">
                <header className="nav-bar-container">
                    <div className="nav-bar-button" id="home">
                        <div className="icon-container-shadow">
                        <div className="icon-container">
                            <img src={window.logoUrl} alt="lynterest-logo"/>
                        </div>
                        </div>
                    </div>

                    <div className="nav-bar-spacer" id="spacer"></div>

                    <div className="nav-bar-button" id="options">
                        <Link to="/login" className="nav-bar-link" >
                            <h1>Log In</h1>
                        </Link>
                    </div>
                    <div className="nav-bar-button" id="options">
                        <Link to="/signup" className="nav-bar-link" >
                            <h1>Sign Up</h1>
                        </Link>
                    </div>
                </header>
                </div> 
            </div>
        )
    }
};

export default NavBarAuth;