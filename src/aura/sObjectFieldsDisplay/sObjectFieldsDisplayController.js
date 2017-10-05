({
    getFields: function(component, event, helper) {
        var selected_fields = []; 
        var checkboxes =component.find("EachCheckbox");
        for (var i = 0; i < checkboxes.length; i++){
            
          // console.log( checkboxes[i].get("v.text") );
            if(checkboxes[i].get("v.value")){
           // 	alert(checkboxes[i].get("v.text"));    
                selected_fields.push(checkboxes[i].get("v.text"));
            }
        }
        component.set('v.selectedFields',selected_fields.join());
        component.set('v.showDownload',true);
        //alert(selected_fields.join());
    },
	downloadCsv : function(component, event, helper) {
		var csv = component.get('v.selectedFields');//'FirstName,LastName,Email';
        alert(csv);
        var hiddenElement = document.createElement('a');
          hiddenElement.href = 'data:text/csv;charset=utf-8,' + encodeURI(csv);
          hiddenElement.target = '_self'; // 
          hiddenElement.download = 'ExportData.csv';  // CSV file Name* you can change it.[only name not .csv] 
          document.body.appendChild(hiddenElement); // Required for FireFox browser
    	  hiddenElement.click(); // using click() js function to download csv file
        }
	,
 
 handleSobjectSelectedEvent :  function(component, event, helper) {
    
 	 
     var sEvent = event.getParams();
        //alert(sEvent.sObjectIs);
    component.set("v.buttonStatus",false);
     component.set("v.sobj_is",sEvent.sObjectIs);
     
     		  var action = component.get("c.getAllFields");
     action.setParams({
         "ObjIs":sEvent.sObjectIs
     });
     
     action.setCallback(this,function(response){
         
         console.log(response.getReturnValue());
                var allFieldsList = [];
                var fieldsMap = response.getReturnValue();
         		 for ( var key in fieldsMap ) {
                     var each = {
                         Name:fieldsMap[key],
                         APIName:key
                     };
                    allFieldsList.push({value:each, key:key});
                }
                component.set("v.Fields", allFieldsList);
     });

	  $A.enqueueAction(action); 
}
})