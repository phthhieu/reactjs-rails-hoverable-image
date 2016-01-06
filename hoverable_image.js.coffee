# We must input: hoveredSrc, src & style for using this
@HoverableImage = React.createClass
  getInitialState: ->
    hovered: false

  componentDidMount: ->
    @getDOMNode().addEventListener("mouseover", @_onOver)
    @getDOMNode().addEventListener("mouseout", @_onOut)

  componentWillUnmount: ->
    @getDOMNode().removeEventListener("mouseover", @_onOver)
    @getDOMNode().removeEventListener("mouseout", @_onOut)
    
  render: ->
    R.DOM.img
      src: @_srcForState()
      style: @props.style

  _onOver: ->
    @setState(hovered: true)

  _onOut: ->
    @setState(hovered: false)

  _srcForState: ->
    if @state.hovered then @props.hoveredSrc else @props.src
