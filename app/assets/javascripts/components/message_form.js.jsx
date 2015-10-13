var MessageForm = React.createClass({

   _submission(){
    var component = this;
    var theText = this.refs.body.getDOMNode().value;

    var messageJSON = {
      message: {
        body: theText
      }
    }

    $.post("/api/rooms/" + this.props.room.id + "/messages.json", messageJSON).then(function(json){
      component.refs.body.getDOMNode().value = "";

      window.location = window.location;
    });
  },

  handleButtonClick(){
    this._submission()
  },

  handleEnterKeyPress(event){
    if (event.which === 13) {
      this._submission()
    }
  },


  render: function() {
    return <div className="message_form">
      <input type="text" ref="body" onKeyPress={this.handleEnterKeyPress}></input>
      <button onClick={this.handleButtonClick}>Submit</button>
    </div>;
  }
});
