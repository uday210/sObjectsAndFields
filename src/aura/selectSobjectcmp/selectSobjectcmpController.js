({
	doInit : function(component, event, helper) {
		  var action = component.get("c.getAllSobjects"); 
        var opts = [];
		opts.push({
                    "class": "optionClass",
                    label: '--None--',
                    value: ''
                }); 
        action.setCallback(this,function(a){
            
            	 var values = [];
                var values = a.getReturnValue();
            console.log(values);
            for(var key in values) {
                console.log(key);
                opts.push({
                    "class": "optionClass",
                    label: key,
                    value: values[key]
                }); 
            }
             component.find("InputSelectDynamic").set("v.options", opts);
        });
        
          $A.enqueueAction(action); 
	},
    
    onChange: function(cmp) {

         var dynamicCmp = cmp.find("InputSelectDynamic");

         var resultCmp = cmp.find("dynamicResult");

      // alert( dynamicCmp.get("v.value"));
        //alert( dynamicCmp.get("v.label"));
        var sobjSelecte = $A.get("e.c:SobjectSelectedEve");
        sobjSelecte.setParams({
            "sObjectIs":dynamicCmp.get("v.value")
        });
        
         sobjSelecte.fire();



     }

})