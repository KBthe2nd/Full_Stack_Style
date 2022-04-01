import React, { Component, Fragment } from 'react';
import { Link } from 'react-router-dom';

class EditChirp extends Component {
    constructor(props) {
        super(props);
        this.state = {
            objects: []
        }
        this.editChirp = this.editChirp.bind(this);
    }

    editChirp(e) {
        e.preventDefault();
        let editUrl = '/chirps/' + this.props.match.params.id + '/edit';
        let Url = '/chirps/' + this.props.match.params.id;
        let obj = { text: this._inputElement.value };
        fetch(editUrl, {
            method: 'PUT',
            body: JSON.stringify(obj),
            headers: new Headers({
                'Content-Type': 'application/json'
            })
        }).then(this.props.history.push(Url))
    }

    render() {
        return (
            <div className="row">
            <div className="col">
                <form>
                    <div className="form-group p-1 m-1">
                        <input type="text"  placeholder={this.state.objects.text} ref={(a) => this._inputElement = a} />
                        <button onClick={this.editChirp} className="btn btn-primary w-80 p-1 m-1">Edit</button>
                    </div>
                </form>
            </div>
        </div>
        )
    }
}

export default EditChirp;