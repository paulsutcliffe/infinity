
// init jquery - lavalamp (jQuery - easing dependant)
$(function() {
  $("header .menu").lavaLamp({
    fx: 'easeOutExpo',
	speed: 1000,
	//click: function() {return false;},
	setOnClick: false
   //fx: 'easeOutBack',
   //autoResize:true,
   //fx: 'easeInElastic',
   //fx: 'easeInBounce',
// speed: 800
  });
});





