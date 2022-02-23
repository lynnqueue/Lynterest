import React, { useState } from "react";
import { withRouter } from "react-router-dom";

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: "",
      // first_name: "",
      // last_name: "",
      // location: "",
      // description: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemo = this.handleDemo.bind(this);
  }
  
  changeInput(field) {
    return (
      e => this.setState({ [field]: e.currentTarget.value })
    );
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state)
    this.props.processForm(user)
      .then(this.props.closeModal)
      .then(() => location.reload(true))
  }

  handleDemo(e) {
    e.preventDefault();

    const user = {
      email: 'd_ocean@gmail.com',
      password: '123456'
    }
    this.props.demoUser(user)
      .then(() => this.props.closeModal())
      .then(() => location.reload(true))
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((err, i) => (
          <li key={i}>
            {err}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    const { formType, switchForm } = this.props;

    const switchFormLink = (
      <a className="switch-form-link" onClick={switchForm} id="switch-form">
        Not on Lynterest yet? Sign up
      </a>
    );

    return (
      <div id="session-form-background">
        <div className="session-form-page">
          <div className="session-form-container">
            <div className="session-form-content">
              <img src={window.logoUrl} alt="lynterest-logo" id="session-form-icon"/>
              <div className="session-form-title">
                <h3>Welcome to Lynterest</h3>
              </div>
              <div className="session-form-subtitle">
                <h3>Find new ideas to try</h3>
              </div>

              <form onSubmit={this.handleSubmit} className="session-form-box">
                {this.props.errors ? this.renderErrors() : null}
                <br />
                <div className="session-form">
                  <label>
                    <input
                      type="text"
                      placeholder="Email"
                      value={this.state.email}
                      onChange={this.changeInput("email")}
                      className="session-input"
                      id="email"
                    />
                  </label>
                  <br />
                  <label>
                    <input
                      type="password"
                      placeholder="Password"
                      value={this.state.password}
                      onChange={this.changeInput("password")}
                      className="session-input"
                      id="password"
                    />
                  </label>
                  <br />
                  <input
                    className="session-submit"
                    type="submit"
                    value={this.props.formType}
                    id="form-action"
                  />
                  <br />
                  <p className="button-separator">OR</p>
                  <input
                    className="demo-session"
                    type="submit"
                    value="Demo User"
                    onClick={this.handleDemo}
                    id="demo-login"
                  />
                  {switchFormLink}
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    );
  }
};

export default withRouter(LoginForm);