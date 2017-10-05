({
    /**scriptsLoaded :function(component, event,helper)
    {
        helper.processComponent(component);
    },
    
    doInit : function(component, event,helper)
    {
        component.set("v.columnsList", component.get("v.columns").split(','));
        if(component.get("v.fieldLabels").length == 0)
        {
            var action = component.get("c.fetchLabels"); 
             action.setParams({
                oName : component.get("v.object"),
                columns: component.get("v.columns")
            });
            
            action.setCallback(this, function(response) {
                if(response.getState() === "SUCCESS")
                {	
                    component.set("v.fieldLabels", response.getReturnValue());
                }
            }); 
            $A.enqueueAction(action);
        }
        
        if(component.get("v.records").length == 0)
        {
            var iaction = component.get("c.fetchItems"); 
             iaction.setParams({
                oName : component.get("v.object"),
                columns: component.get("v.columns"),
                dlimit: component.get("v.limit")
            });
            
            iaction.setCallback(this, function(aresponse) {
                if(aresponse.getState() === "SUCCESS")
                {	
                    component.set("v.records", aresponse.getReturnValue());
					helper.processComponent(component);
                }
            }); 
            $A.enqueueAction(iaction);
        }
        
        if(component.get("v.fieldTypes").length == 0)
        {
            var taction = component.get("c.fetchTypes"); 
             taction.setParams({
                oName : component.get("v.object"),
                columns: component.get("v.columns")
            });
            
            taction.setCallback(this, function(tresponse) {
                if(tresponse.getState() === "SUCCESS")
                {	
                    component.set("v.fieldTypes", tresponse.getReturnValue());
					helper.processComponent(component);
                }
            }); 
            $A.enqueueAction(taction);
        }
        
        
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