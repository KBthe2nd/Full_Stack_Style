import React, { Component, Fragment } from 'react';
import { Link } from 'react-router-dom';

class DeleteChirp extends Component {
    constructor(props) {
        super(props);
        this.state = {
            objects: []
        }
        this.deleteChirp = this.deleteChirp.bind(this);
    }

    deleteChirp(e) {
        let url = '/chirps/' + this.props.match.params.id;
        fetch(url, {
            method: 'DELETE',
            headers: new Headers({ 'Content-Type': 'application/json' })
        })
        .then(this.props.history.push('/'))
    }

    render() {
        return (
            <button onClick={this.deleteChirp} className="btn btn-danger my-1">Delete</button>
        )
    }
}

export default DeleteChirp;