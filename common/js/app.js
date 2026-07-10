(function(){

var app = angular.module('portfolio', ['ui.bootstrap']);
app.controller('CarouselDemoCtrl', function() {
  
  this.products = slides;
});


  var slides = [{
      title: 'Business Consultation',
      text: 'orem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum dolor nunc, in tincidunt est dictum euismod.',
      cover: 'common/images/business/cover.jpg',
      images:[
        'common/images/business/1.jpg',
        'common/images/business/2.jpg',
        'common/images/business/3.jpg',
      ]
    },{
      title: 'Photography',
      text: 'orem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum dolor nunc, in tincidunt est dictum euismod.',
      cover: 'common/images/photog/cover.jpg',
      images:[
        'common/images/photog/1.jpg',
        'common/images/photog/2.jpg',
        'common/images/photog/3.jpg',
      ]
    }];
})();
