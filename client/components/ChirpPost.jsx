import React, { Component } from "react";
import { render } from "react-dom";

class ChirpPost extends Component {
  constructor(props) {
    super(props);
    this.chirpPost = this.chirpPost.bind(this);
  }

  chirpPost(e) {
    e.preventDefault();
    let obj = { text: this._inputElement.value };
    fetch("/chirps", {
      method: "POST",
      body: JSON.stringify(obj),
      headers: new Headers({
        "Content-Type": "application/json",
      }),
    });
  }

  render() {
    return (
      <div className="row">
        <form>
          <div className="form-group p-1 m-1">
            <input
              type="text"
              className="form-control p-1 m-1 bg-light"
              id="chirp-text"
              ref={(a) => (this._inputElement = a)}
              placeholder="Chirp?!"
            />
            <button
              onClick={this.chirpPost}
              className="btn btn-primary w-80 p-1 m-1"
            >
              Chirp it!
            </button>
            <small  className="form-text text-muted">
              Say What?
            </small>
          </div>
        </form>
      </div>
    );
  }
}

export default ChirpPost;