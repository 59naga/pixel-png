# PixelPng [![NPM version][npm-image]][npm] [![Build Status][travis-image]][travis] [![Coverage Status][coveralls-image]][coveralls]

[![Sauce Test Status][sauce-image]][sauce]

> Parse GIF to ImageData in cross-platform.

## Installation
```bash
$ npm install pixel-png --save
```
```js
var pixelPng= require('pixel-png');
console.log(pixelPng); //function
```

# API

## pixelPng.parse(`file`) -> promise.then(`images`)

return `images` is Array contains one or more `ImageData`.
> Return the `object` instead of `ImageData` at Node.js

```js
var file= 'https://59naga.github.io/fixtures/animated.PNG';

pixelPng.parse(file).then(function(images){
  var i= 0;

  console.log(images.loopCount); // 0(Infinite)

  var nextImage= function(){
    var imageData= images[i++];
    if(imageData==null) return;

    console.log(imageData.width, imageData.height, imageData.data.length);
    nextImage();
  }

  nextImage();
});
// 73 73 21316
// 73 73 21316
// 73 73 21316
// ...
```

# See
* [pixel](https://github.com/59naga/pixel/)
* [pixel-util](https://github.com/59naga/pixel-util/)
* [pixel-gif](https://github.com/59naga/pixel-gif-/)
* __pixel-png__
* [pixel-jpg](https://github.com/59naga/pixel-jpg/)
* [pixel-bmp](https://github.com/59naga/pixel-bmp/)

License
---
[MIT][License]

[License]: http://59naga.mit-license.org/

[sauce-image]: http://soysauce.berabou.me/u/59798/pixel-png.svg?large
[sauce]: https://saucelabs.com/u/59798
[npm-image]:https://img.shields.io/npm/v/pixel-png.svg?style=flat-square
[npm]: https://npmjs.org/package/pixel-png
[travis-image]: http://img.shields.io/travis/59naga/pixel-png.svg?style=flat-square
[travis]: https://travis-ci.org/59naga/pixel-png
[coveralls-image]: http://img.shields.io/coveralls/59naga/pixel-png.svg?style=flat-square
[coveralls]: https://coveralls.io/r/59naga/pixel-png?branch=master