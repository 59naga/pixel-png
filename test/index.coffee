# Dependencies
pixelPng= require '../src'
fixture= require 'fixture-images'

# Environment
jasmine.DEFAULT_TIMEOUT_INTERVAL= 3000

# Specs
describe 'pixel-png',->
  describe '.parse',->
    it 'animated',(done)->
      file= fixture.animated.png

      pixelPng.parse file
      .then (images)->
        expect(images.numPlays).toBe 0
        expect(images.length).toBe 34
        
        image= images[0]
        expect(image.width).toBe 73
        expect(image.height).toBe 73
        expect(image.data.length).toBe image.width*image.height*4

        done()

    it 'static',(done)->
      file= fixture.still.png

      pixelPng.parse file
      .then (images)->
        expect(images.numPlays).toBe -1

        image= images[0]
        expect(image.width).toBe 96
        expect(image.height).toBe 96
        expect(image.data.length).toBe image.width*image.height*4

        done()
