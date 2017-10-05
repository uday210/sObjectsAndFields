({
    /**save : function(component, event,helper)
    {
        var action = component.get("c.saveRecord"); 
        action.setParams({
            arecord : JSON.stringify(component.get("v.record")),
            objectName:component.get("v.recordType")
        });
        action.setCallback(this, function(response) {
            var myCmp = component.find("message");
			
            if(response.getReturnValue() != 'NULL' && response.getReturnValue().indexOf('ERROR:') == -1)
            {	
                $A.util.addClass(myCmp, "SUCCESS");
                component.set("v.message",component.get("v.recordType")+' saved successfully');
            }
            else
            {
                $A.util.addClass(myCmp, "FAILURE");
                component.set("v.message",response.getReturnValue().replace('ERROR:',''));
            }
        }); 
        $A.enqueueAction(action);
    },
	doInit : function(component, event,helper)
    {
        //alert(component.get("v.recordType"));
        var action = component.get("c.getRecord"); 
        action.setParams({
            objectName : component.get("v.recordType")
        });
        action.setCallback(this, function(response) {
            if(response.getState() === "SUCCESS")
            {	
                component.set("v.record", response.getReturnValue());
                var comps = component.get("v.body");
                if(comps.length != 0)
                {
                    comps[0].set("v.record", component.get("v.record"));
                }            
            }
        }); 
        $A.enqueueAction(action);
	},
    showSpinner : function (component, event, helper) {
        var spinner = component.find('spinner');
        var evt = spinner.get("e.toggle");
        evt.setParams({ isVisible : true });
        evt.fire();    
    },
    
    hideSpinner : function (component, event, helper) {
       var spinner = component.find('spinner');
       var evt = spinner.get("e.toggle");
       evt.setParams({ isVisible : false });
       evt.fire();    
    }*/
})