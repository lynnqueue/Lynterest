import React from 'react';

class SignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
      age: null
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
    return (
      <div className="sessionformbg">
        <div className="session-form-modal">
          <div className="session-form-container">
            <form onSubmit={this.handleSubmit} className="login-form-box">
              <img src={window.logoUrl} alt="lynterest-logo"/>
              <h3>Welcome to Lynterest</h3>
              <span className="subtitle">Find new ideas to try</span>
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
                  <input type="number"
                    placeholder="Age"
                    onChange={this.update('age')}
                    className="login-input"
                  />
                <br/>

                <input className="session-submit" type="submit" value={this.props.formType}/>
              </div>
              <br/>
              <span className="toggle-link">{this.props.toggle}</span>
            </form>
          </div>
        </div>
      </div>
    );
  }
}

export default SignupForm;
