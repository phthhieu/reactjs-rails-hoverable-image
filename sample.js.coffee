@Sample = React.createClass
  render: ->
    React.DOM.div
      className: 'sample-widget'
      React.createElement(HoverableImage,
        src: 'image source for normal state' # Modify this
        hoveredSrc: 'image source for hovered state' # Modify this
        style:
          width: 24
      )
        