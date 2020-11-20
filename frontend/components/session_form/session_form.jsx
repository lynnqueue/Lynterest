import React from 'react';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    const age = <input type="number"
                  placeholder="Age"
                  onChange={this.update('age')}
                  className="login-input"
                />
    return (
      <div className="sessionformbg">
        <div className="session-form-modal">
          <div className="session-form-container">
            <form onSubmit={this.handleSubmit} className="login-form-box">
              <h3>Welcome to Lynterest</h3>
              <h4>Find new ideas to try</h4>
              <br/>
              <div className="errors">{this.renderErrors()}</div>
              <div className="login-form">
                <br/>
                  <input type="text"
                    placeholder="Email"
                    value={this.state.email}
                    onChange={this.update('email')}
                    className="login-input"
                  />
                <br/>
                  <input type="password"
                    placeholder="Password"
                    value={this.state.password}
                    onChange={this.update('password')}
                    className="login-input"
                  />
                <br/>
                {this.props.formType === 'signup' ? age : null}
                <br/>

                <input className="session-submit" type="submit" value={this.props.formType === 'login' ? 'Log in' : 'Continue'}/>
              </div>
              <br/>
              <br/>
              <span className="toggle-link">{this.props.toggle}</span>
            </form>
          </div>
        </div>
      </div>
    );
  }
}

export default SessionForm;
