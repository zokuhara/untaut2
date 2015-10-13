var Message = React.createClass({

  render: function() {
    return <div className="message">
      <strong>{this.props.message.user.username}:</strong>  {this.props.message.body}


    </div>;
  }
});
