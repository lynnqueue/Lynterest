import { connect } from "react-redux";
import { login } from "../../actions/session_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import LoginForm from "./login_form";

const mapStateToProps = state => ({
  errors: state.errors.session,
  formType: "Log in",
});

const mapDispatchToProps = dispatch => ({
  demoLogin: user => dispatch(login(user)),
  processForm: user => dispatch(login(user)),
  demoUser: user => dispatch(login(user)),
  switchForm: () => dispatch(openModal("signup")),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(LoginForm);

