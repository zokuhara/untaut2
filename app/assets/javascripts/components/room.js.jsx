var Room = React.createClass({

  getInitialState(){
    return{
      room: {
        name: "",
        id: this.props.room.id,
        messages: []
      }
    }
  },

  fetchMessages(){
    var component = this;

    $.getJSON("/api/rooms/" + this.state.room.id + ".json")
      .done(function(json){
        component.setState({room: json.room});
      })
  },

  componentDidMount(){
    this.fetchMessages();
    this.messageInterval = setInterval(this.fetchMessages, 3000);
  },

  componentWillUnmount(){
    clearInterval(messageInterval);
  },

  render: function() {
    return <div>
      {this.state.room.room_name} ({this.state.room.messages.length})

      <div className="messages">
        {this.state.room.messages.map(function(message){
          return <Message message={message}></Message>
        })}

      </div>

      <MessageForm room={this.state.room}></MessageForm>
    </div>;
  }
});
