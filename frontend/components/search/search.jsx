import React from "react";
import modal from "../modal/modal";


class Search extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { } = this.props;

    return (
      <div className="search-container">
        <div className="search-icon-container">
          <i className="fas fa-search" id="search-icon"></i>
        </div>
        <div className="search-input-container">
          <input className="search-input" type="text" placeholder="Search" />
        </div>
      </div>
    )
  }
};

export default Search;