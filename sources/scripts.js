function displayAlert(){
  alert('test');
}

var buttonState = false;



function onWeioReady() {
       console.log("DOM is loaded, websocket is opened");
       
   $('#light').click(function(){
        if (!buttonState) {
            digitalWrite(22,HIGH);
            digitalWrite(23,HIGH);
            digitalWrite(20,HIGH);
            digitalWrite(21,HIGH);
        
            $( "#light" ).text("ON");
         }
         else {
             digitalWrite(20,LOW);
             digitalWrite(23,LOW);
            digitalWrite(22,LOW);
            digitalWrite(21,LOW);
            
             $( "#light" ).text("OFF");
         }
     buttonState = !buttonState;
   });
   
   
   
   
       
}
