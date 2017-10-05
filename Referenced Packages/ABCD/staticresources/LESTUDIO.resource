{
	"components": 
		[
			{ 
				"Id":"One",
				"Name":"component",
				"Label":"Component",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Core",
				"Description":"Lightning Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"buildPanel",
				"DisplayTemplate":"AuraComponentTemplate",
				"LifeCount":"0",
				"Sortable":"y",
				"dropId":"buildPanel",
				"Attributes":
				[
					{"Type":"Text","Name":"controller","Label":"Apex Controller"},
					{"Type":"Checkbox","Name":"implements","Label":"Supports", "Mandatory":false,"Value":"flexipage:availableForAllPageTypes", "options":[{"Label":"Lightning Tabs", "Value":"force:appHostable"},{"Label":"All Lightning Pages", "Value":"flexipage:availableForAllPageTypes"},{"Label":"Lightning Experience", "Value":"flexipage:availableForRecordHome"},{"Label":"Lightning Communities", "Value":"forceCommunity:availableForAllPageTypes"},{"Label":"Page Record Id", "Value":"force:hasRecordId"},{"Label":"Page Object Name", "Value":"force:hasSObjectName"},{"Label":"Emails (Outlook/Gmail)", "Value":"clients:availableForMailAppAppPage"},{"Label":"Email Item Context", "Value":"clients:hasItemContext"}]},
					{"Type":"Text","Name":"extends","Label":"Extends"}
				]
			},
			{ 
				"Id":"One",
				"Name":"component",
				"Label":"Component",
				"Type":"Visualforce",
				"NameSpace":"design",
				"Category":"Core",
				"Description":"Design Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Design",
				"DisplayTemplate":"DesignComponentTemplate",
				"LifeCount":"0",
				"Sortable":"y",
				"dropId":"lcdesign",
				"Attributes":
				[
					{"Type":"Text","Name":"label","Label":"Label","Value":"My Component"}
				]
			},
			{ 
				"Id":"One",
				"Name":"application",
				"Label":"Application",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Core",
				"Description":"Lightning Application",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"buildPanel",
				"DisplayTemplate":"AuraApplicationTemplate",
				"LifeCount":"0",
				"Sortable":"y",
				"dropId":"buildPanel",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"}
				]
			},
			{ 
				"Id":"One",
				"Name":"event",
				"Label":"Event",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Core",
				"Description":"Lightning Event",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"buildPanel",
				"DisplayTemplate":"AuraEventTemplate",
				"LifeCount":"0",
				"Sortable":"y",
				"dropId":"buildPanel",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Radio","Name":"type","Label":"Type","Value":"Application", "Options":[{"Label":"Application", "Value":"Application"},{"Label":"Component", "Value":"Component"}]}
				]
			},
			{ 
				"Id":"One",
				"Name":"interface",
				"Label":"Interface",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Core",
				"Description":"Lightning Interface",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"buildPanel",
				"DisplayTemplate":"AuraInterfaceTemplate",
				"LifeCount":"0",
				"Sortable":"y",
				"dropId":"buildPanel",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"}
				]
			},
			{ 
				"Id":"One",
				"Name":"tokens",
				"Label":"Tokens",
				"Type":"Lightning Design Tokens",
				"NameSpace":"aura",
				"Category":"Core",
				"Description":"Visualforce Page",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"buildPanel",
				"DisplayTemplate":"AuraTokensTemplate",
				"LifeCount":"0",
				"Sortable":"y",
				"dropId":"buildPanel",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"}
				]
			},
			{ 
				"Id":"One",
				"Name":"token",
				"Label":"Token",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Core",
				"Description":"Lightning Design Token",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"aura:tokens",
				"DisplayTemplate":"AuraTokenTemplate",
				"LifeCount":"1",
				"Sortable":"y",
				"Attributes":
				[
					{"Type":"Text","Name":"name","Label":"Name"},
					{"Type":"Text","Name":"value","Label":"Value"}
				]
			},
			{ 
				"Id":"One",
				"Name":"attribute",
				"Label":"Attribute",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Core",
				"Description":"Lightning Attribute",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"aura:application,aura:component",
				"DisplayTemplate":"AuraAttributeTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"name","Label":"Name","Mandatory":true},
					{"Type":"List","Name":"type","Label":"TYpe","Mandatory":true,  "Options":[{"Label":"Boolean", "Value":"Boolean"},{"Label":"Date", "Value":"Date"},{"Label":"DateTime", "Value":"DateTime"},{"Label":"Decimal", "Value":"Decimal"},{"Label":"Double", "Value":"Double"},{"Label":"Integer", "Value":"Integer"},{"Label":"Long", "Value":"Long"},{"Label":"String", "Value":"String"},{"Label":"Object", "Value":"Object"},{"Label":"Set", "Value":"Set"},{"Label":"List", "Value":"List"},{"Label":"Map", "Value":"Map"}],"InitAction":"ABCD.GLOBAL.OBJECTS"}, 
					{"Type":"Radio","Name":"access","Label":"Access","Value":"Public","Options":[{"Label":"Public", "Value":"Public"},{"Label":"Global", "Value":"Global"},{"Label":"Private", "Value":"Private"}]},
					{"Type":"Text","Name":"default","Label":"Default Value"}
				]
			},
			{ 
				"Id":"One",
				"Name":"attribute",
				"Label":"Design Attribute",
				"Type":"Visualforce",
				"NameSpace":"design",
				"Category":"Core",
				"Description":"Design Component attribute",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"design:component",
				"DisplayTemplate":"AuraAttributeTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"List","Name":"name","Label":"Name","Mandatory":true,  "Options":[{"Label":"--None--", "Value":""}],"InitAction":"InitializeDesignAttributes"}, 
					{"Type":"Text","Name":"label","Label":"Label"},
					{"Type":"TextArea","Name":"datasource","Label":"Datasource"},
					{"Type":"TextArea","Name":"description","Label":"Description"}
				]
			},
			{ 
				"Id":"One",
				"Name":"NewControllerMethod",
				"Label":"Controller Method",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Controller",
				"Description":"Controller method",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Controller",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"NewHelperMethod",
				"Label":"Helper Method",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Helper",
				"Description":"Helper method",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Helper",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"Render",
				"Label":"Render Method",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Renderers",
				"Description":"Render Method",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Renderer",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"AfterRender",
				"Label":"After Render Method",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Renderers",
				"Description":"After Render Method",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Renderer",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"Rerender",
				"Label":"Rerender Method",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Renderers",
				"Description":"Rerender Method",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Renderer",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"Unrender",
				"Label":"Unrender Method",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Renderers",
				"Description":"Unrender Method",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Renderer",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"ComponentAction",
				"Label":"Component Action",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Javascript Code",
				"Description":"Javascript code to invoke a component action",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Controller,Helper,Renderer",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"AppEvent",
				"Label":"App Event",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Javascript Code",
				"Description":"Javascript code to invoke an application event",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Controller,Helper,Renderer",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"CompEvent",
				"Label":"Component Event",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Javascript Code",
				"Description":"Javascript code to invoke a component event",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Controller,Helper,Renderer",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"Alert",
				"Label":"JS Alert",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Javascript Code",
				"Description":"Javascript alert code",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Controller,Helper,Renderer",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"ConsoleLog",
				"Label":"JS Console",
				"Type":"Visualforce",
				"NameSpace":"DUMMY",
				"Category":"Javascript Code",
				"Description":"Javascript console log",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"Controller,Helper,Renderer",
				"DisplayTemplate":"ControllerMethodTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					
				]
			},
			{ 
				"Id":"One",
				"Name":"handler",
				"Label":"Action Handler",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Events",
				"Description":"Action Handler definition",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"aura:application,aura:component",
				"DisplayTemplate":"AuraHandlerTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"name","Label":"Name","Mandatory":true,"Value":"init"},
					{"Type":"Text","Name":"event","Label":"Event"},
					{"Type":"Text","Name":"value","Label":"Value","Value":"{!this}"},
					{"Type":"Text","Name":"action","Label":"Action","Value":"{!c.initHandler}"}
				]
			},
			{ 
				"Id":"One",
				"Name":"dependency",
				"Label":"Dependency",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Core",
				"Description":"Lightning dependency definition",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"aura:component",
				"DisplayTemplate":"AuraDependencyTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"TextArea","Name":"resource","Label":"Resource","Value":"markup://sampleNamespace:sampleComponent"},
					{"Type":"TextArea","Name":"type","Label":"Type","Value":"COMPONENT,APPLICATION,EVENT"}
				]
			},
			{ 
				"Id":"One",
				"Name":"registerEvent",
				"Label":"Register Event",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Events",
				"Description":"Register Event definition",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"AuraRegisterEventTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"name","Label":"Name","Mandatory":true,"Value":"App Event Name"},
					{"Type":"Text","Name":"type","Label":"Type","Value":"c:AppEvent"},
					{"Type":"TextArea","Name":"description","Label":"Description","Value":"App Event Registration"}
				]
			},
			{ 
				"Id":"One",
				"Name":"spinner",
				"Label":"Spinner",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Spinner",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UISpinnerTemplate",
				"hidden":true,
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"class","Label":"Class"},
					{"Type":"RadioRow","Name":"isVisible","Label":"Visible", "Value":"true","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]}
				]
			},
			{ 
				"Id":"One",
				"Name":"button",
				"Label":"Button",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Button",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIButtonTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":true,"Value":"Button"},
					{"Type":"RadioRow","Name":"disabled","Label":"Disabled", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Text","Name":"press","Label":"On Press"}
				]
			},
			{ 
				"Id":"One",
				"Name":"message",
				"Label":"Message",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Message",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIMessageTemplate",
				"Sortable":"y",
				"hidden":true,
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"title","Label":"Title","Value":"Message Title"},
					{"Type":"RadioRow","Name":"severity","Label":"Severity", "Value":"message","options":[{"Label":"Message", "Value":"message"},{"Label":"Confirm", "Value":"confirm"},{"Label":"Info", "Value":"info"},{"Label":"Warning", "Value":"warning"},{"Label":"Error", "Value":"error"}]},
					{"Type":"Checkbox","Name":"closable","Label":"Closable?","Value":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputText",
				"Label":"Input Text",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input Text",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputTextTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input Text"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"Text","Name":"placeholder","Label":"Placeholder"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputSecret",
				"Label":"Input Secret",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input Secret",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputSecretTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input Text"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"Text","Name":"placeholder","Label":"Placeholder"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputURL",
				"Label":"Input URL",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input URL",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputURLTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input URL"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"Text","Name":"placeholder","Label":"Placeholder"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputEmail",
				"Label":"Input Email",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input EMail",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputEmailTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input Email"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"Text","Name":"placeholder","Label":"Placeholder"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputTextArea",
				"Label":"Input TextArea",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input Textarea",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputTextAreaTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input TextArea"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"Text","Name":"placeholder","Label":"Placeholder"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Text","Name":"rows","Label":"Rows"},
					{"Type":"Text","Name":"cols","Label":"Columns"}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputCheckbox",
				"Label":"Input Checkbox",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input Checkbox",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputCheckboxTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input Checkbox"},
					{"Type":"Text","Name":"name","Label":"Name"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputCurrency",
				"Label":"Input Currency",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input Currency",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputCurrencyTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input Currency"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"Text","Name":"placeholder","Label":"Placeholder"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Text","Name":"format","Label":"Format","Value":".00"}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputDate",
				"Label":"Input Date",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input Date",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputDateTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input Date"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Text","Name":"format","Label":"Format","Value":"MMMM d, yyyy"},
					{"Type":"RadioRow","Name":"displayDatePicker","Label":"Display Date Picker", "Value":"true","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputPhone",
				"Label":"Input Phone",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input Phone",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputPhoneTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input Phone"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Text","Name":"placeholder","Label":"Placeholder"}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputNumber",
				"Label":"Input Number",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Input Number",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIInputNumberTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"label","Label":"Label","Value":"Input Number"},
					{"Type":"Text","Name":"value","Label":"Value"},
					{"Type":"Text","Name":"class","Label":"Class","Value":"slds-input slds-float--left","tab":"Styles"},
					{"Type":"RadioRow","Name":"required","Label":"Rquired", "Value":"false","options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Text","Name":"format","Label":"Format","Value":"#,##0,000.00#"},
					{"Type":"Text","Name":"placeholder","Label":"Placeholder"}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputText",
				"Label":"Output Text",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Output Text",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIOutputTextTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputURL",
				"Label":"Output URL",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Output URL",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIOutputURLTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputEmail",
				"Label":"Output Email",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Output Email",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIOutputEmailTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputTextArea",
				"Label":"Output TextArea",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Output Textarea",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIOutputTextAreaTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputCheckbox",
				"Label":"Output Checkbox",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Output Checkbox",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIOutputCheckboxTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputCurrency",
				"Label":"Output Currency",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Output Currency",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIOutputCurrencyTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputDate",
				"Label":"Output Date",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Output Date",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIOutputDateTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputPhone",
				"Label":"Output Phone",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Output Phone",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIOutputPhoneTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputNumber",
				"Label":"Output Number",
				"Type":"Visualforce",
				"NameSpace":"ui",
				"Category":"UI",
				"Description":"UI Output Number",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":false,
				"Droppables":"aura:component",
				"DisplayTemplate":"UIOutputNumberTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":true}
				]
			},
			{ 
				"Id":"One",
				"Name":"require",
				"Label":"Require",
				"Type":"Visualforce",
				"NameSpace":"ltng",
				"Category":"Core",
				"Description":"Lightning Require component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"aura:component",
				"DisplayTemplate":"LtngRequireTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"TextArea","Name":"scripts","Label":"Scripts","Mandatory":false},
					{"Type":"TextArea","Name":"styles","Label":"Styles","Mandatory":false,"Value":"/resource/AB4CD__SLDS070/assets/styles/salesforce-lightning-design-system-vf.css"},
					{"Type":"Text","Name":"beforeLoadingResources","Label":"Before Loading Method"},
					{"Type":"Text","Name":"afterScriptsLoaded","Label":"After Loaded Method","Value":"{!c.afterScriptsLoaded}"}
				]
			},
			{ 
				"Id":"One",
				"Name":"iteration",
				"Label":"Data Iterator",
				"Type":"Visualforce",
				"NameSpace":"aura",
				"Category":"Core",
				"Description":"Lightning Iterator",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"aura:component",
				"DisplayTemplate":"AuraIterationTemplate",
				"Sortable":"y",
				"LifeCount":"1",
				"hidden":true,
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"},
					{"Type":"Text","Name":"items","Label":"Data Items"},
					{"Type":"Text","Name":"var","Label":"Variable Name"}
				]
			},
			{ 
				"Id":"One",
				"Name":"textBox",
				"Label":"Inline Code",
				"Type":"Visualforce",
				"NameSpace":"",
				"Category":"Core",
				"Description":"Inline code component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"AsIs":true,
				"Droppables":"aura:component,aura:iteration",
				"LifeCount":"1",
				"hidden":true,
				"DisplayTemplate":"TextBoxTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"aura:id","Label":"AURA Id"}
				]
			},
			{ 
				"Id":"One",
				"Name":"badge",
				"Label":"Badge",
				"Type":"Visualforce",
				"NameSpace":"lightning",
				"Category":"Lightning",
				"Description":"Lightning Badge",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"aura:application,aura:component",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":true},
					{"Type":"Text","Name":"class","Label":"Class"}
				]
			}
		]
}