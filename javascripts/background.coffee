---
---

$ ->

  $window = $(window)

  $('<canvas/>')
    .attr
      id    : 'bg'
      width : $window.width()
      height: $(document).height()
    .appendTo('body')

  canvas = new fabric.Canvas 'bg', selection: false

  lazyDraw  = _.debounce (-> draw(canvas)), 200
  lazyClear = _.debounce (-> canvas.clear()), 200, true
  $window.on 'resize', lazyDraw
  $window.on 'resize', lazyClear

  init = -> $window.trigger 'resize'
  setTimeout init, 250

# ---

BGpolygon = fabric.util.createClass fabric.Polygon,

  initialize: (line, boundaries, options) ->
    @callSuper 'initialize', options

  animateTop: (toLine) ->


  _points: (line, boundaries) ->
    [
      { x: 0, y: line.a }
      { x: boundaries.width, y: line.b }
      { x: boundaries.width, y: boundaries.height }
      { x: 0, y: boundaries.height }
      { x: 0, y: line.a }
    ]

  _render: (ctx) ->
    polygon = new fabric.Polygon points,
      fill: '#49227a'
      stroke: null
      opacity: y[2]



draw = (canvas) ->

  $window           = $(window)
  [wWidth, wHeight] = [$window.width(), $window.height()]

  $document         = $(document)
  [dWidth, dHeight] = [$document.width(), $document.height()]

  $headline         = $('section.intro')
  $about            = $('section.about')
  $footer           = $('#footer')

  canvas.clear()

  canvas.setWidth($window.width())
  canvas.setHeight($document.height())

  lines = []

  aboutTop    = $about.offset().top
  aboutBottom = aboutTop + $about.height()
  footerTop   = $footer.offset().top

  lines.push [
    aboutBottom - 30
    aboutTop + 100
    0.05
  ]
  lines.push [
    aboutBottom + 10
    aboutBottom - 30
    0.05
  ]
  lines.push [
    footerTop - 100
    footerTop - 10
    0.5
  ]
  lines.push [
    footerTop - 40
    footerTop - 70
    1
  ]

  for y, i in lines
    points = [
      { x: 0,      y: y[0]    }
      { x: wWidth, y: y[1]    }
      { x: wWidth, y: dHeight }
      { x: 0,      y: dHeight }
      { x: 0,      y: y[0]    }
    ]
    polygon = new fabric.Polygon points,
      fill: '#49227a'
      stroke: null
      opacity: y[2]
      selectable: false

    canvas.add polygon

# Helpers

rand = (start, end) ->
  if end?
    Math.round(Math.random() * (end - start)) + start
  else
    Math.round(Math.random() * start)
