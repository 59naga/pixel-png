# Dependencies
PixelUtil= (require 'pixel-util').PixelUtil
apngCanvasParser= require 'apng-canvas-parser'

class PixelPng extends PixelUtil
  parse: (file)->
    @createBuffer file
    .then (buffer)->
      apngCanvasParser buffer
    .then (images)->
      images.numPlays?= -1

      images
      
module.exports= new PixelPng
module.exports.PixelPng= PixelPng