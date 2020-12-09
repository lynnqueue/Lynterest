import React from "react";
import { Link, NavLink } from "react-router-dom";

class BoardShowNavBar extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      prevScrollPos: window.pageYOffset,
      fadeInTitle: false,
    };

    this.handleScroll = this.handleScroll.bind(this);
  }

  componentDidMount() {
    window.addEventListener("scroll", this.handleScroll);
  }

  componentWillUnmount() {
    window.removeEventListener("scroll", this.handleScroll);
  }

  handleScroll() {
    const { prevScrollPos } = this.state;
    const currentScrollPos = window.pageYOffset;
    const fadeInTitle = (prevScrollPos < currentScrollPos - 50);
    
    this.setState({
      fadeInTitle
    });
  }

  render() {
    const { openEditBoard, board, user } = this.props;
    const transition = (this.state.fadeInTitle) ? 'in' : 'out';
    const klass = (location.hash.includes(user.username)) ? 'show' : 'hide';

    return (
      <div className="board-show navbar">
        <div className="board-show fade-title-container">
          <div className={`board-show fade-title ${transition}`}>
            {board.title}
          </div>
        </div>
        <div className="board-show profile-button-container">
          <Link
            to={`/${user.username}`}
            className="board-show profile-button">
            <img src={user.photo} className="board-show profile-photo" />
          </Link>
        </div>
      </div>
    )
  }
}

export default BoardShowNavBar;