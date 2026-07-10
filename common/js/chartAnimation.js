   // pie chart data
    var data = [
        {
            value: 40,
            color:"#6a000f"
        },
        {
            value : 40,
            color : "#00366e"
        },
        {
            value : 10,
            color : "#ffffff"
        },
        {
            value : 10,
            color : "#cba67d"
        }
    ];

    // pie chart options
    var options = {
         segmentShowStroke : false,
         animateScale : false
    }



  $('.profile').one('inview', function (event, visible) {
    if (visible == true) {

      var canvas = document.getElementById("design");
      var ctx = canvas.getContext("2d");
      new Chart(ctx).Doughnut(data, options); 

      $('.designer').fadeIn().animate({
        top: "0"
        }, 500);                        


    }
  });


     var data1 = [
        {
            value : 30,
            color : "#4ACAB4"
        },
        {
            value : 30,
            color : "#FF8153"
        },
        {
            value : 25,
            color : "#142640"
        },
        {
            value : 15,
            color : "#555555"
        },
    ];


    // pie chart options
    var options1 = {
         segmentShowStroke : false,
         animateScale : false

    }


  $('.profile').one('inview', function (event, visible) {
    if (visible == true) {

    var canvas1 = document.getElementById("develop");
    var ctx = canvas1.getContext("2d");
    new Chart(ctx).Doughnut(data1, options1);  

   $('.developer').fadeIn().animate({
    top: "0"
    }, 500);                        
  }

});
