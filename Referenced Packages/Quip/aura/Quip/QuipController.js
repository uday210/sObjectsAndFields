({
	init: function(component, event, helper) {
		var action = component.get("c.getOrgId");
        action.setCallback(this, function(result) {
            var state = result.getState();
            if (state === 'SUCCESS') {
                component.set("v.orgId", result.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})