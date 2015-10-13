
  render: function() {
    return React.createElement("div", {className: "message"}, 
      React.createElement("strong", null, this.props.message.user.username, ":"), "  ", this.props.message.body


    );
  }
});