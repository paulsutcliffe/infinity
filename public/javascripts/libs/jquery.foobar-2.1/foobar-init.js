
$(document).ready(function() {

  $foobar({
    "height" : {
      "bar" : 100, "button" : 30
    },
    
    "width": {
      "left": "0", "center": "*",
      "right": "0", "button": "80px"
    },
   
    "display" : {
      //"backgroundColor" : "transparent",
      "border": "solid 3px #000",
      "button": {
        "backgroundColor": "#800",
        "type": "close"
      },
      "theme": {
        "bar": "x-white custom-bg"
      }
    },
    
    "messages": [
      alerta_mensaje
    ],
    
    "message": {
      "font": {
        "color": "#ff0",
        "size": "24px",
        "shadow": "1px 1px 0 #444",
        "weight": "bold"
      }
    }
  });

});
