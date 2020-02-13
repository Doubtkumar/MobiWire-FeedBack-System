var counter = 0;
var limit = 1;
function addAnswer(dynamicInputs,inputType){
    // debugger;
    var w = document.getElementById("typeSelect");

    var dis=w.options[w.selectedIndex].value;
    switch(dis){
    														
        case "select" :
            alert("select type first !!!!");
            break;
        
        case "text":
        	if (counter == limit)  {
                alert("You have reached the limit of adding " + counter + " inputs");
                break;
           }
          else{
              var addnew = document.createElement("div");
              addnew.innerHTML = "<input name='options["+counter+"].option' placeholder='type answer'></input><br><input hidden='true' value='text' name='options["+counter+"].type'></input>";
              document.getElementById("dynamicInputs").appendChild(addnew);
              counter=counter+1;
              w.disabled =true;
              break;
          }
           
        case 'radio':
            if (counter == 5)  {
                alert("You have reached the limit of adding " + counter + " inputs");
                break;
           }
          else{
              var addnew = document.createElement("div");
              addnew.innerHTML =  "<input name='options["+counter+"].option' placeholder='type answer'></input><br><input hidden='true' value='radio' name='options["+counter+"].type'></input.";
              document.getElementById("dynamicInputs").appendChild(addnew);
              w.disabled =true;
              counter=counter+1;
              break;
          }

        case 'textarea':
            if (counter == limit)  {
                alert("You have reached the limit of adding " + counter + " inputs");
                break;
           }
          else{
              var addnew = document.createElement("div");
              addnew.innerHTML = "<input name='options["+counter+"].option' placeholder='type answer'></input><br><input hidden='true' value='textarea' name='options["+counter+"].type'></input.";
              document.getElementById("dynamicInputs").appendChild(addnew);
              w.disabled =true;
              counter=counter+1;
              break;
          }

        case 'dropdown' :
            if (counter == 10)  {
                alert("You have reached the limit of adding " + counter + " inputs");
                break;
           }
          else{
              var addnew = document.createElement("div");
              addnew.innerHTML =  "<input name='options["+counter+"].option' placeholder='type answer'></input><br><input hidden='true' value='dropdown' name='options["+counter+"].type'></input.";
              document.getElementById("dynamicInputs").appendChild(addnew);
              w.disabled =true;
              counter=counter+1;
              break;
          }
    }
    
}
function typeOfQuestion(data){
	 var r = document.getElementById("typeSelect");
  	 var dist=r.options[r.selectedIndex].value;
  	 var addnew = document.createElement("div");
    addnew.innerHTML = "<input type='text' hidden name='type' value='"+dis+"'></input>"
    document.getElementById("data").appendChild(addnew);	
    alert("Question Added successfully !")
}

