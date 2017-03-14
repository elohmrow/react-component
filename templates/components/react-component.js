var PropertiesList = React.createClass({
    
  getInitialState: function() {
    return {
      properties: {
        title: "Loading",
        desc: "Loading",
        abstract: "Loading"
      }
    }
  },

  componentDidMount: function() {
    var _this = this;
    axios.get('${ctx.contextPath}/.rest/custom/v1/propsof${content.@path}').then(function(response) {
      _this.setState({properties: response.data});
    });
  },

  render: function() {      
    return (
      <div>
        <h3>{this.state.properties.title}</h3>
        <p>{this.state.properties.desc}</p>
        <p>{this.state.properties.abstract}</p>
      </div>   
    );
  }

});

ReactDOM.render(<PropertiesList />, document.getElementById('root_${content.@id}'))