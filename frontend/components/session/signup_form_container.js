import { connect } from "react-redux";
import { signup, login } from "../../actions/session_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import { fetchSingleUser } from "../../actions/user_actions";
import SignupForm from "./signup_form";

const mapStateToProps = state => ({
  errors: state.errors,
  formType: "Sign up",
});

const mapDispatchToProps = dispatch => ({
  demoLogin: user => dispatch(login(user)),
  processForm: user => dispatch(signup(user)),
  demoUser: user => dispatch(login(user)),
  fetchSingleUser: id => dispatch(fetchSingleUser(id)),
  switchForm: () => dispatch(openModal("login")),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(SignupForm);

