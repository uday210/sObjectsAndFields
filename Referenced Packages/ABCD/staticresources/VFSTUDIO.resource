{
	"components": 
		[
			{ 
				"Id":"One",
				"Name":"page",
				"Label":"Page",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"Standard",
				"Description":"Visualforce Page root component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":false,
				"Container":true,
				"Droppables":"buildPanel",
				"DisplayTemplate":"ApexPageTemplate",
				"Extensions":"Steroid.RuntimeExtension",
				"LifeCount":"0",
				"Sortable":"y",
				"dropId":"buildPanel",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"RadioRow","Name":"showHeader","Label":"Show Header", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"sidebar","Label":"Show Sidebar", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Text","Name":"standardController","Label":"Page Object", "Mandatory":false, "Readonly":true},
					{"Type":"Text","Name":"controller","Label":"Custom Controller", "Mandatory":false, "Readonly":false},
					{"Type":"TextArea","Name":"extensions","Label":"Extensions", "Mandatory":false, "Readonly":false},
					{"Type":"Helper","Draggable":true,"Droppables":"apex:page","PropertyTemplate":"ListsHelperTemplate", "DropTemplate":"ApexRelatedListTemplate", "Name":"lists","Label":"Related Lists","InitAction":"ABCD.CONTEXT.LISTS", "tab":"Related", "Exclusions":"CONTEXT.LISTS"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Library",
				"Label":"Library",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"ABCD Library component. This component initalizes all core resources like Apex, Javascript and CSS",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page",
				"LifeCount":"*",
				"DisplayTemplate":"ABCDLibraryTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"id","Label":"Id","Mandatory":false,"Value":"ABCD"}
				]
			},
			{ 
				"Id":"One",
				"Name":"Library",
				"Label":"Library",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"ABCD Library component. This component initalizes all core resources like Apex, Javascript and CSS",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page",
				"Hidden":true,
				"LifeCount":"*",
				"DisplayTemplate":"ABCDLibraryTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"id","Label":"Id","Mandatory":false,"Value":"ABCD"}
				]
			},
			{ 
				"Id":"One",
				"Name":"includeScript",
				"Label":"Include Script",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"ABCD",
				"Description":"Include a Javascript reference",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page",
				"DisplayTemplate":"ApexIncludeScriptTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Radio","Name":"loadOnReady","Label":"Load On Ready","Value":"false","Options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}], "Mandatory":false},
					{"Type":"TextArea","Name":"value","Label":"Source"}
				]
			},
			{ 
				"Id":"One",
				"Name":"stylesheet",
				"Label":"Include Stylesheet",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"ABCD",
				"Description":"Include a CSS reference",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page",
				"DisplayTemplate":"ApexStylesheetTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"value","Label":"Source"}
				]
			},
			{ 
				"Id":"One",
				"Name":"form",
				"Label":"Form",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"ABCD",
				"Description":"Basic Form component that houses all fields and lists",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:page,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"Sortable":"y",
				"DisplayTemplate":"ApexFormTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"styleClass","Label":"Style Class","Mandatory":false},
					{"Type":"Text","Name":"style","Label":"Style","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"pageHeader",
				"Label":"Page Header",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Page Header component with an actions bar and header fields",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:form",
				"LifeCount":"*",
				"Sortable":"y",
				"DisplayTemplate":"ApexPageHeaderTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Mandatory":false, "Value":"ABCD"}, 
					{"Type":"Text","Name":"subtitle","Label":"Sub Title","Mandatory":false,"Value":"VF Page"},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"context","Label":"Context","Mandatory":true,"Readonly":true},
					{"Type":"Fragmented","Name":"headerFields","Label":"Header Fields","Mandatory":false, "Separator":",","PlaceHolder":"Drag Fields into this sesction" },
					{"Type":"Helper","tab":"Fields","Draggable":true,"Droppables":"PGFields","PropertyTemplate":"ListFieldHelperTemplate", "DropTemplate":"ListFieldDropTemplate", "Name":"headerListFields","Label":"Fields","InitAction":"ABCD.CONTEXT.FIELDS"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"pageHeader",
				"Label":"Page Header",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Page Header component with an actions bar and header fields",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:form",
				"LifeCount":"*",
				"Sortable":"y",
				"Hidden":true,
				"DisplayTemplate":"ApexPageHeaderTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Mandatory":false, "Value":"ABCD"}, 
					{"Type":"Text","Name":"subtitle","Label":"Sub Title","Mandatory":false,"Value":"VF Page"},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"context","Label":"Context","Mandatory":true,"Readonly":true},
					{"Type":"Fragmented","Name":"headerFields","Label":"Header Fields","Mandatory":false, "Separator":",","PlaceHolder":"Drag Fields into this sesction" },
					{"Type":"Helper","tab":"Fields","Draggable":true,"Droppables":"PGFields","PropertyTemplate":"ListFieldHelperTemplate", "DropTemplate":"ListFieldDropTemplate", "Name":"headerListFields","Label":"Fields","InitAction":"ABCD.CONTEXT.FIELDS"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"actionBar",
				"Label":"Actions Bar",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Actions bar that organizes buttons into a group",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"AB4CD:PageHeader,c:PageHeader",
				"LifeCount":"*",
				"Sortable":"x",
				"DisplayTemplate":"ApexActionBarTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false},
					{"Type":"Helper","Draggable":true,"Droppables":"blockActions","tab":"Buttons","PropertyTemplate":"ButtonsHelperTemplate", "DropTemplate":"ApexCommandButtonTemplate", "Name":"Buttons","Label":"Buttons","InitAction":"ABCD.CONTEXT.ACTIONS"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"actionBar",
				"Label":"Actions Bar",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Actions bar that organizes buttons into a group",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"AB4CD:PageHeader,c:PageHeader",
				"LifeCount":"*",
				"Sortable":"x",
				"hidden":true,
				"DisplayTemplate":"ApexActionBarTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false},
					{"Type":"Helper","Draggable":true,"Droppables":"blockActions","tab":"Buttons","PropertyTemplate":"ButtonsHelperTemplate", "DropTemplate":"ApexCommandButtonTemplate", "Name":"Buttons","Label":"Buttons","InitAction":"ABCD.CONTEXT.ACTIONS"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Grid",
				"Label":"Grid",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Grid Component allows creation of grids with mutiple cells",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Sortable":"x",
				"Droppables":"AB4CD:Step,c:Step,apex:page,apex:form,apex:pageBlock,apex:tab",
				"DisplayTemplate":"ABCDGridTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Grid",
				"Label":"Grid",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Grid Component allows creation of grids with mutiple cells",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Hidden":true,
				"Sortable":"x",
				"Droppables":"AB4CD:Step,c:Step,apex:page,apex:form,apex:pageBlock,apex:tab",
				"DisplayTemplate":"ABCDGridTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Wrapper",
				"Label":"Wrapper",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Wrapper component creates a container with styling options",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step",
				"LifeCount":"*",
				"Sortable":"y",
				"DisplayTemplate":"ABCDWrapperTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title", "Mandatory":false},
					{"Type":"TextArea","Name":"style","Label":"Style"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Wrapper",
				"Label":"Wrapper",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Wrapper component creates a container with styling options",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step",
				"LifeCount":"*",
				"Sortable":"y",
				"Hidden":true,
				"DisplayTemplate":"ABCDWrapperTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title", "Mandatory":false},
					{"Type":"TextArea","Name":"style","Label":"Style"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"FieldGroup",
				"Label":"Field Group",
				"Type":"Visualforce",
				"NameSpace":"AB4CD", 
				"Category":"ABCD",
				"Description":"Field Group component creates a group of fileds in Edit/Detail modes",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step",
				"LifeCount":"*",
				"DisplayTemplate":"ABCDFieldGroupTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"context","Label":"Context","Mandatory":true,"Readonly":true}, 
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Title","Label":"Title","Mandatory":false, "Value":"Field Group"},
					{"Type":"Radio","Name":"Mode","Label":"Mode", "Value":"Edit", "Mandatory":false, "options":[{"Label":"Edit", "Value":"Edit"},{"Label":"Detail", "Value":"Detail"}]},
					{"Type":"Radio","Name":"inlineEdit","Label":"Inline Editing", "Value":"false", "Mandatory":false, "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Fragmented","Name":"FieldsList","Label":"Fields List","Mandatory":false, "Separator":",","PlaceHolder":"Drag Fields into this sesction" },
					{"Type":"Helper","tab":"Fields","Draggable":true,"Droppables":"fgColumns","PropertyTemplate":"FGFieldsHelperTemplate", "DropTemplate":"FGFieldDropTemplate", "Name":"Fields","Label":"Fields","InitAction":"ABCD.CONTEXT.FIELDS","Exclusions":"CONTEXT.FIELDS"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"FieldGroup",
				"Label":"Field Group",
				"Type":"Visualforce",
				"NameSpace":"C", 
				"Category":"ABCD",
				"Description":"Field Group component creates a group of fileds in Edit/Detail modes",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step",
				"LifeCount":"*",
				"Hidden":true,
				"DisplayTemplate":"ABCDFieldGroupTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"context","Label":"Context","Mandatory":true,"Readonly":true}, 
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Title","Label":"Title","Mandatory":false, "Value":"Field Group"},
					{"Type":"Radio","Name":"Mode","Label":"Mode", "Value":"Edit", "Mandatory":false, "options":[{"Label":"Edit", "Value":"Edit"},{"Label":"Detail", "Value":"Detail"}]},
					{"Type":"Radio","Name":"inlineEdit","Label":"Inline Editing", "Value":"false", "Mandatory":false, "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Fragmented","Name":"FieldsList","Label":"Fields List","Mandatory":false, "Separator":",","PlaceHolder":"Drag Fields into this sesction" },
					{"Type":"Helper","tab":"Fields","Draggable":true,"Droppables":"fgColumns","PropertyTemplate":"FGFieldsHelperTemplate", "DropTemplate":"FGFieldDropTemplate", "Name":"Fields","Label":"Fields","InitAction":"ABCD.CONTEXT.FIELDS","Exclusions":"CONTEXT.FIELDS"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"LookupData",
				"Label":"Lookup Data",
				"Type":"Visualforce",
				"NameSpace":"AB4CD", 
				"Category":"ABCD",
				"Description":"Lookup Data component display data from a Lookup field",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"Hidden":false,
				"DisplayTemplate":"ABCDLookupDataTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"List","Name":"ObjectId","Label":"Lookup Field","Mandatory":true,  "Options":[{"Label":"--None--", "Value":""}],"InitAction":"LoadReferenceFields","ActionEvent":"OnChange", "ActionFunction":"refreshReferenceFields", "ActionTarget":"Fields"}, 
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Title","Label":"Title","Mandatory":false, "Value":"Field Group"},
					{"Type":"Radio","Name":"inlineEdit","Label":"Inline Editing", "Value":"false", "Mandatory":false, "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Fragmented","Name":"FieldsList","Label":"Fields List","Mandatory":false, "Separator":",","PlaceHolder":"Drag Fields into this sesction" },
					{"Type":"Helper","tab":"Fields","Draggable":true,"Droppables":"fgColumns","PropertyTemplate":"FGFieldsHelperTemplate", "DropTemplate":"FGFieldDropTemplate", "Name":"Fields","Label":"Fields","InitAction":"InitializeLookupFields","Exclusions":"CONTEXT.FIELDS"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"LookupData",
				"Label":"Lookup Data",
				"Type":"Visualforce",
				"NameSpace":"C", 
				"Category":"ABCD",
				"Description":"Lookup Data component display data from a Lookup field",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"Hidden":true,
				"DisplayTemplate":"ABCDLookupDataTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"List","Name":"ObjectId","Label":"Lookup Field","Mandatory":true,  "Options":[{"Label":"--None--", "Value":""}],"InitAction":"LoadReferenceFields","ActionEvent":"OnChange", "ActionFunction":"refreshReferenceFields", "ActionTarget":"Fields"}, 
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Title","Label":"Title","Mandatory":false, "Value":"Field Group"},
					{"Type":"Radio","Name":"inlineEdit","Label":"Inline Editing", "Value":"false", "Mandatory":false, "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Fragmented","Name":"FieldsList","Label":"Fields List","Mandatory":false, "Separator":",","PlaceHolder":"Drag Fields into this sesction" },
					{"Type":"Helper","tab":"Fields","Draggable":true,"Droppables":"fgColumns","PropertyTemplate":"FGFieldsHelperTemplate", "DropTemplate":"FGFieldDropTemplate", "Name":"Fields","Label":"Fields","InitAction":"InitializeLookupFields","Exclusions":"CONTEXT.FIELDS"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"lout",
				"Label":"Lightning Component",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Lightning Component injects a Lightning Component into Visualforce page",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Wrapper,c:Wrapper",
				"LifeCount":"*",
				"DisplayTemplate":"ABCDLOUTTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"app","Label":"Lightning App Name","Mandatory":true,"Value":"c:lcvfTest"}, 
					{"Type":"Text","Name":"comp","Label":"Lightning Component","Mandatory":true, "Value":"ui:button"},
					{"Type":"TextArea","Name":"params","Label":"Properties (JSON)","Mandatory":false, "Value":"'label':'Clerisoft'"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"lout",
				"Label":"Lightning Component",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Lightning Component injects a Lightning Component into Visualforce page",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Wrapper,c:Wrapper",
				"LifeCount":"*",
				"Hidden":true,
				"DisplayTemplate":"ABCDLOUTTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"app","Label":"Lightning App Naame","Mandatory":true,"Value":"AB4CD:LightningApp"}, 
					{"Type":"Text","Name":"comp","Label":"Lightning Component","Mandatory":true, "Value":"Steroid:RemindMe"},
					{"Type":"TextArea","Name":"params","Label":"Component Properties (JSON)","Mandatory":true, "Value":"'Title':'Remind Me'"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"SmartList",
				"Label":"Smart List",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Create a Smart List for any objects with Paginations, Sorts and Mass actions ",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"DisplayTemplate":"ABCDSmartListTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"List","Name":"Object","Label":"Object","Mandatory":true,  "Options":[{"Label":"--None--", "Value":""}],"InitAction":"ABCD.GLOBAL.OBJECTS","ActionEvent":"OnChange", "ActionFunction":"loadListFields", "ActionTarget":"Fields"}, 
					{"Type":"Text","Name":"Title","Label":"Title","Mandatory":false, "Value":"Smart List"},
					{"Type":"Text","Name":"Name","Label":"Name","Mandatory":true},
					{"Type":"Text","Name":"nameField","Label":"Name Field"},
					{"Type":"Text","Name":"ListPageSize","Label":"Page Size","Mandatory":false, "Value":"5"},
					{"Type":"TextArea","Name":"WhereClause","Label":"Where Clause","Mandatory":false},
					{"Type":"TextArea","Name":"initialSort","Label":"Inital Sort","Mandatory":false},
					{"Type":"Text","Name":"relField","Label":"Relation Field","Mandatory":false},
					{"Type":"Text","Name":"relFieldValue","Label":"Relation Field Value","Mandatory":false},
					{"Type":"TextArea","Name":"createFields","Label":"Create Fields List","Mandatory":false},
					{"Type":"TextArea","Name":"summary","Label":"Summary Fields","Mandatory":false},
					{"Type":"RadioRow","Name":"editMode","Label":"Keep Editable?", "Mandatory":false,"Value":"false", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"Refresh","Label":"Refresh?", "Mandatory":false,"Value":"false", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"filters","Label":"Filters?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"MassActions","Label":"Mass Actions?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"DetailsLink","Label":"Details Link?", "Mandatory":false,"Value":"false", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"Editable","Label":"Editable?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"collapsible","Label":"Collapsible?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"New","Label":"New?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"PageStats","Label":"Show Pagination Controls", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Fragmented","Name":"Columns","Label":"Columns","Mandatory":false, "Separator":",","PlaceHolder":"Drag Fields into this sesction" },
					{"Type":"Helper","tab":"Fields","Draggable":true,"Droppables":"listColumns","PropertyTemplate":"ListFieldHelperTemplate", "DropTemplate":"ListFieldDropTemplate", "Name":"Fields","Label":"Fields","InitAction":"InitializeListFields","InitParams":"Object","Exclusions":"Columns"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"SmartList",
				"Label":"Smart List",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Create a Smart List for any objects with Paginations, Sorts and Mass actions",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"Hidden":true,
				"DisplayTemplate":"ABCDSmartListTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"List","Name":"Object","Label":"Object","Mandatory":true,  "Options":[{"Label":"--None--", "Value":""}],"InitAction":"ABCD.GLOBAL.OBJECTS","ActionEvent":"OnChange", "ActionFunction":"loadListFields", "ActionTarget":"Fields"}, 
					{"Type":"Text","Name":"Title","Label":"Title","Mandatory":false, "Value":"Smart List"},
					{"Type":"Text","Name":"Name","Label":"Name","Mandatory":true},
					{"Type":"Text","Name":"nameField","Label":"Name Field"},
					{"Type":"Text","Name":"ListPageSize","Label":"Page Size","Mandatory":false, "Value":"5"},
					{"Type":"TextArea","Name":"WhereClause","Label":"Where Clause","Mandatory":false},
					{"Type":"TextArea","Name":"initialSort","Label":"Inital Sort","Mandatory":false},
					{"Type":"Text","Name":"relField","Label":"Relation Field","Mandatory":false},
					{"Type":"Text","Name":"relFieldValue","Label":"Relation Field Value","Mandatory":false},
					{"Type":"TextArea","Name":"createFields","Label":"Create Fields List","Mandatory":false},
					{"Type":"TextArea","Name":"summary","Label":"Summary Fields","Mandatory":false},
					{"Type":"RadioRow","Name":"editMode","Label":"Keep Editable?", "Mandatory":false,"Value":"false", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"Refresh","Label":"Refresh?", "Mandatory":false,"Value":"false", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"filters","Label":"Filters?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"MassActions","Label":"Mass Actions?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"DetailsLink","Label":"Details Link?", "Mandatory":false,"Value":"false", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"Editable","Label":"Editable?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"collapsible","Label":"Collapsible?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"New","Label":"New?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"PageStats","Label":"Show Pagination Controls", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Fragmented","Name":"Columns","Label":"Columns","Mandatory":false, "Separator":",","PlaceHolder":"Drag Fields into this sesction" },
					{"Type":"Helper","tab":"Fields","Draggable":true,"Droppables":"listColumns","PropertyTemplate":"ListFieldHelperTemplate", "DropTemplate":"ListFieldDropTemplate", "Name":"Fields","Label":"Fields","InitAction":"InitializeListFields","InitParams":"Object","Exclusions":"Columns"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Calendar",
				"Label":"Events Calendar",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Events Calendar component that displays past, present and future events",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel",
				"LifeCount":"*",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Calendar",
				"Label":"Events Calendar",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Events Calendar component that displays past, present and future events",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Hidden":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel",
				"LifeCount":"*",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"fileUploader",
				"Label":"File Uploader",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Drag & Drop File Uploader Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Value":"Rich Text"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"fileUploader",
				"Label":"File Uploader",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Drag & Drop File Uploader Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel",
				"LifeCount":"1",
				"hidden":true,
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Value":"Rich Text"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"richText",
				"Label":"Rich Text",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Rich Text Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"AsIs":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel,vs:visualstrapblock,vs:alert,vs:well,vs:label,vs:badge,vs:jumbotron",
				"LifeCount":"1",
				"DisplayTemplate":"ABCDRichTextTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"richText",
				"Label":"Rich Text",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Rich Text Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"AsIs":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel,vs:visualstrapblock,vs:alert,vs:well,vs:label,vs:badge,vs:jumbotron",
				"LifeCount":"1",
				"hidden":true,
				"DisplayTemplate":"ABCDRichTextTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Javascript",
				"Label":"Javascript",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Javascript Container Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"AsIs":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel,vs:visualstrapblock,vs:alert,vs:well,vs:label,vs:badge,vs:jumbotron",
				"LifeCount":"1",
				"DisplayTemplate":"ABCDJavascriptTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Javascript",
				"Label":"Javascript",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Javascript Container Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"AsIs":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel,vs:visualstrapblock,vs:alert,vs:well,vs:label,vs:badge,vs:jumbotron",
				"LifeCount":"1",
				"hidden":true,
				"DisplayTemplate":"ABCDJavascriptTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Html",
				"Label":"HTML",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"HTML Container Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"AsIs":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel,vs:visualstrapblock,vs:alert,vs:well,vs:label,vs:badge,vs:jumbotron",
				"LifeCount":"1",
				"DisplayTemplate":"ABCDHTMLTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Html",
				"Label":"HTML",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"HTML Container Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"AsIs":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step,apex:outputPanel,vs:visualstrapblock,vs:alert,vs:well,vs:label,vs:badge,vs:jumbotron",
				"LifeCount":"1",
				"hidden":true,
				"DisplayTemplate":"ABCDHTMLTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Wizard",
				"Label":"Wizard",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Multistep Wizard Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"Sortable":"y",
				"DisplayTemplate":"ABCDWizardTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"Title","Label":"Title","Mandatory":false, "Value":"Quick Create"},
					{"Type":"Text","Name":"SubTitle","Label":"Sub Title","Mandatory":false, "Value":"Quick Create"},
					{"Type":"Text","Name":"Steps","Label":"Wizard Steps", "Mandatory":false,"Value":"2"},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Wizard",
				"Label":"Wizard",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Multistep Wizard Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"Sortable":"y",
				"hidden":true,
				"DisplayTemplate":"ABCDWizardTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"Title","Label":"Title","Mandatory":false, "Value":"Quick Create"},
					{"Type":"Text","Name":"SubTitle","Label":"Sub Title","Mandatory":false, "Value":"Quick Create"},
					{"Type":"Text","Name":"Steps","Label":"Wizard Steps", "Mandatory":false,"Value":"2"},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Step",
				"Label":"Wizard Step",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Wizatd flow step",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"AB4CD:Wizard,c:Wizard",
				"LifeCount":"*",
				"Sortable":"y",
				"DisplayTemplate":"ABCDWizardStepTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Position","Label":"Step Position","Mandatory":true},
					{"Type":"TextArea","Name":"Guidance","Label":"Guidance","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"Step",
				"Label":"Wizard Step",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Wizatd flow step",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Sortable":"y",
				"Droppables":"AB4CD:Wizard,c:Wizard",
				"LifeCount":"*",
				"hidden":true,
				"DisplayTemplate":"ABCDWizardStepTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Position","Label":"Step Position","Mandatory":true},
					{"Type":"TextArea","Name":"Guidance","Label":"Guidance","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"reportChart",
				"Label":"Report Chart",
				"Type":"Visualforce",
				"NameSpace":"analytics",
				"Category":"ABCD",
				"Description":"Report Chart component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Hidden":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Wrapper,c:Wrapper",
				"LifeCount":"*",
				"DisplayTemplate":"ApexReportChartTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"reportId","Label":"Report Id","Mandatory":true},
					{"Type":"Radio","Name":"showRefreshButton","Label":"Show Refresh Button", "Value":"true", "Mandatory":false, "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Radio","Name":"size","Label":"Size","Mandatory":false,  "Value":"medium", "options":[{"Label":"Tiny", "Value":"tiny"},{"Label":"Small", "Value":"small"},{"Label":"Medium", "Value":"medium"},{"Label":"Large", "Value":"large"},{"Label":"Huge", "Value":"huge"}]},
					{"Type":"TextArea","Name":"filter","Label":"Filter"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"GMap",
				"Label":"Google Map",
				"Type":"Visualforce",
				"NameSpace":"C", 
				"Category":"ABCD",
				"Description":"Google Maps component that plots various data elements onto to a google map",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"Hidden":true,
				"DisplayTemplate":"ABCDGoogleMapTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"Height","Label":"Height","Value":"300px"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"GMap",
				"Label":"Google Map",
				"Type":"Visualforce",
				"NameSpace":"AB4CD", 
				"Category":"ABCD",
				"Description":"Google Maps component that plots various data elements onto to a google map",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"DisplayTemplate":"ABCDGoogleMapTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"Height","Label":"Height","Value":"300px"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"tabPanel",
				"Label":"Tabs",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"ABCD",
				"Description":"Tabs component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:page,apex:form,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"DisplayTemplate":"ApexTabPanelTemplate", 
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"RadioRow","Name":"headerAlignment","Label":"Tab Alignment","Mandatory":false,"options":[{"Label":"Left", "Value":"left"},{"Label":"Right", "Value":"right"}], "Value":"left"},
					{"Type":"Radio","Name":"switchType","Label":"Switch Type", "Value":"client", "Mandatory":false, "options":[{"Label":"Client", "Value":"client"},{"Label":"Server", "Value":"server"},{"Label":"Ajax", "Value":"ajax"}]},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false},
					{"Type":"Text","Name":"styleClass","Label":"Style CLass","Mandatory":false, "Tab":"Styles", "Value":"tabHeaderClass"},
					{"Type":"Text","Name":"activeTabClass","Label":"Active Tab Class","Mandatory":false, "Tab":"Styles", "Value":"activeTabClass"},
					{"Type":"Text","Name":"inactiveTabClass","Label":"Inactive Tab Class","Mandatory":false, "Tab":"Styles", "Value":"inactiveTabClass"},
					{"Type":"Text","Name":"headerClass","Label":"Header Class","Mandatory":false, "Tab":"Styles", "Value":"tabHeaderClass"},
					{"Type":"Text","Name":"headerClass","Label":"Header Class","Mandatory":false, "Tab":"Styles", "Value":"tabHeaderClass"},
					{"Type":"Text","Name":"contentclass","Label":"Content Class","Mandatory":false, "Tab":"Styles", "Value":"tabContentClass"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"tab",
				"Label":"Tab",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"ABCD",
				"Description":"Apex Tab Panel",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:tabPanel",
				"LifeCount":"*",
				"Hidden":true,
				"DisplayTemplate":"ApexTabTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"name","Label":"Name","Mandatory":false},
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"panelBar",
				"Label":"Panels",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"ABCD",
				"Description":"Panels component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:page,apex:form,AB4CD:GridColumn,c:GridColumn",
				"LifeCount":"*",
				"DisplayTemplate":"ApexPanelBarTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false},
					{"Type":"Text","Name":"styleClass","Label":"Style Class","Mandatory":false, "Tab":"Styles", "Value":"panelBarStyle"},
					{"Type":"Text","Name":"headerClass","Label":"Active Header Class","Mandatory":false, "Tab":"Styles", "Value":"panelBarHeaderClass"},
					{"Type":"Text","Name":"headerClassActive","Label":"Style Class","Mandatory":false, "Tab":"Styles", "Value":"panelBarHeaderActiveClass"},
					{"Type":"Text","Name":"contentclass","Label":"Content Class","Mandatory":false, "Tab":"Styles", "Value":"panelContentClass"},
					{"Type":"Radio","Name":"switchType","Label":"Switch Type?", "Mandatory":false, "options":[{"Label":"Client", "Value":"client"},{"Label":"Server", "Value":"server"},{"Label":"Ajax", "Value":"ajax"}]},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"panelBarItem",
				"Label":"Panel",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"ABCD",
				"Description":"Apex Panel Bar Item",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:panelBar",
				"LifeCount":"*",
				"Hidden":true,
				"DisplayTemplate":"ApexPanelBarItemTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"name","Label":"Name","Mandatory":false},
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"sectionHeader",
				"Label":"Section Header",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"Classic",
				"Description":"Section Header component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page",
				"DisplayTemplate":"ApexSectionHeaderTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Mandatory":false, "Value":"ABCD"}, 
					{"Type":"Text","Name":"subtitle","Label":"Sub Title","Mandatory":false,"Value":"VF Page"},
					{"Type":"TextArea","Name":"description","Label":"Description","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"pageBlock",
				"Label":"Block",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"Classic",
				"Description":"Pageblock Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step",
				"LifeCount":"*",
				"Sortable":"y",
				"DisplayTemplate":"ApexPageBlockTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Mandatory":false},
					{"Type":"Radio","Name":"mode","Label":"Display Mode","Value":"maindetail","Options":[{"Label":"Edit", "Value":"edit"},{"Label":"Detail", "Value":"detail"},{"Label":"Main Detail", "Value":"maindetail"},{"Label":"Inline Edit", "Value":"inlineEdit "}], "Mandatory":false},
					{"Type":"Text","Name":"tabStyle","Label":"Tab Style","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"pageBlockButtons",
				"Label":"Page Block Buttons",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"Classic",
				"Description":"Pageblock Buttons component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:pageBlock",
				"LifeCount":"*",
				"Sortable":"x",
				"DisplayTemplate":"ApexPageBlockButtonsTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"RadioRow","Name":"location","Label":"Location","Options":[{"Label":"Top", "Value":"top"},{"Label":"Bottom", "Value":"bottom"},{"Label":"Both", "Value":"both"}], "Mandatory":false},
					{"Type":"Text","Name":"styleClass","Label":"Style Class","Mandatory":false},
					{"Type":"Text","Name":"style","Label":"Style","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false},
					{"Type":"Helper","Draggable":true,"Droppables":"blockActions","tab":"Buttons","PropertyTemplate":"ButtonsHelperTemplate", "DropTemplate":"ApexCommandButtonTemplate", "Name":"Buttons","Label":"Buttons","InitAction":"ABCD.CONTEXT.ACTIONS"}
				]
			},
			{ 
				"Id":"One",
				"Name":"commandButton",
				"Label":"Command Button",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"Classic",
				"Description":"Command Button",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:pageBlockButtons,AB4CD:ActionBar,c:ActionBar",
				"Hidden":false,
				"LifeCount":"*",
				"DisplayTemplate":"ApexCommandButtonTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"value","Label":"Label","Mandatory":false,"Value":"Button"}, 
					{"Type":"Text","Name":"action","Label":"Action","Mandatory":false},
					{"Type":"Radio","Name":"styleClass","Label":"Button Style","Value":"slds-button slds-button--neutral", "Options":[{"Label":"Neutral", "Value":"slds-button slds-button--neutral"},{"Label":"Brand", "Value":"slds-button slds-button--brand"},{"Label":"Destructive", "Value":"slds-button slds-button--destructive"}], "Mandatory":false},
					{"Type":"Text","Name":"style","Label":"Style","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"commandLink",
				"Label":"Command Link",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"Classic",
				"Description":"Command Link",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:pageBlockButtons",
				"LifeCount":"*",
				"Hidden":false,
				"DisplayTemplate":"ApexCommandLinkTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"value","Label":"Label","Mandatory":false,"Value":"Link"}, 
					{"Type":"Text","Name":"action","Label":"Action","Mandatory":false},
					{"Type":"Text","Name":"styleClass","Label":"Style Class","Mandatory":false},
					{"Type":"Text","Name":"style","Label":"Style","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"pageBlockSection",
				"Label":"Section",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"Classic",
				"Description":"Pageblock Section component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:pageBlock,apex:outputPanel",
				"LifeCount":"*",
				"Sortable":"xy",
				"DelayAction":"adjustColumnStyle",
				"DisplayTemplate":"ApexPageBlockSectionTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title", "Mandatory":false},
					{"Type":"RadioRow","Name":"columns","Label":"Columns","Value":"2", "Options":[{"Label":"One", "Value":"1"},{"Label":"Two", "Value":"2"}], "Mandatory":false},
					{"Type":"RadioRow","Name":"collapsible","Label":"Collapsible?", "Value":"No", "Mandatory":false, "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"RadioRow","Name":"showHeader","Label":"Display Header?", "Mandatory":false,"Value":"true", "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false},
					{"Type":"Helper","Draggable":true,"Droppables":"sectionFields","PropertyTemplate":"FieldsHelperTemplate", "DropTemplate":"ApexInputFieldTemplate", "Name":"Fields","Label":"Fields","InitAction":"ABCD.CONTEXT.FIELDS", "tab":"Fields", "Exclusions":"CONTEXT.FIELDS"}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputField",
				"Label":"Input Field",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Exclusions":"CONTEXT.FIELDS",
				"Category":"Classic",
				"Description":"Apex Input Field",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Hidden":true,
				"Droppables":"apex:pageBlockSection",
				"LifeCount":"*",
				"DisplayTemplate":"ApexInputFieldTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":false},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":false, "Readonly":true},
					{"Type":"RadioRow","Name":"required","Label":"Required?", "Mandatory":false, "options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"Text","Name":"styleClass","Label":"Style Class","Mandatory":false},
					{"Type":"Text","Name":"style","Label":"Style","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputField",
				"Label":"Output Field",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Exclusions":"CONTEXT.FIELDS",
				"Category":"Classic",
				"Description":"Apex Output Field",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Hidden":true,
				"Droppables":"apex:pageBlockSection",
				"LifeCount":"*",
				"DisplayTemplate":"ApexOutputFieldTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":false},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":false, "Readonly":true},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"include",
				"Label":"Include Page",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Exclusions":"GLOBAL.PAGES",
				"Category":"Classic",
				"Description":"Include Page component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step",
				"LifeCount":"*",
				"DisplayTemplate":"ApexIncludePageTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"List","Name":"pageName","Label":"Page","Mandatory":true,  "Options":[{"Label":"--None--", "Value":""}],"InitAction":"ABCD.GLOBAL.ALLPAGES"}, 
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"scontrol",
				"Label":"Include S-Control",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"Classic",
				"Description":"Include S-Control component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"apex:page,apex:form,apex:tab,apex:panelBarItem,AB4CD:GridColumn,c:GridColumn,AB4CD:Step,c:Step",
				"LifeCount":"*",
				"DisplayTemplate":"ApexSControlTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"List","Name":"controlName","Label":"S-Control","Mandatory":true,  "Options":[{"Label":"--None--", "Value":""}],"InitAction":"ABCD.GLOBAL.SCONTROLS"}, 
					{"Type":"Text","Name":"subject","Label":"Object Id"},
					{"Type":"Text","Name":"height","Label":"Height"}, 
					{"Type":"Text","Name":"width","Label":"Width"}, 
					{"Type":"RadioRow","Name":"scrollbars","Label":"Scroll Bars?","Mandatory":false,"options":[{"Label":"Yes", "Value":"true"},{"Label":"No", "Value":"false"}]},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"messages",
				"Label":"Page Messages",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Category":"Classic",
				"Description":"Page Messages component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Hidden":false,
				"Droppables":"apex:page",
				"LifeCount":"*",
				"DisplayTemplate":"ApexMessagesTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"layout","Label":"Layout","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"relatedList",
				"Label":"Related List",
				"Type":"Visualforce",
				"NameSpace":"apex",
				"Exclusions":"CONTEXT.LISTS",
				"Category":"Classic",
				"Description":"Related List component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Hidden":true,
				"Droppables":"apex:page",
				"LifeCount":"*",
				"DisplayTemplate":"ApexRelatedListTemplate",
				"Attributes":
				[ 
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"list","Label":"List","Mandatory":false, "Readonly":true},
					{"Type":"Text","Name":"title","Label":"Title","Mandatory":false},
					{"Type":"Text","Name":"pageSize","Label":"List Size","Mandatory":false},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputField",
				"Label":"Input Field",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Exclusions":"CONTEXT.FIELDS",
				"Category":"ABCD",
				"Description":"Custom Input Field",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Hidden":true,
				"Droppables":"AB4CD:Section,c:Section",
				"LifeCount":"*",
				"DisplayTemplate":"ABCDInputFieldTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":false},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":false, "Readonly":true},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Context","Label":"Context","Mandatory":false, "Value":"{!Account}","Readonly":true},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"inputField",
				"Label":"Input Field",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Exclusions":"CONTEXT.FIELDS",
				"Category":"ABCD",
				"Description":"Custom Input Field",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Hidden":true,
				"Droppables":"AB4CD:Section,c:Section",
				"LifeCount":"*",
				"DisplayTemplate":"ABCDInputFieldTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":false, "Readonly":true},
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":false},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Context","Label":"Context","Mandatory":false, "Value":"{!Account}","Readonly":true},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputField",
				"Label":"Output Field",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Exclusions":"CONTEXT.FIELDS",
				"Category":"ABCD",
				"Description":"Custom Input Field",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Hidden":true,
				"Droppables":"AB4CD:Section,c:Section",
				"LifeCount":"*",
				"DisplayTemplate":"ABCDOutputFieldTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":false},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":false, "Readonly":true},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Context","Label":"Context","Mandatory":false, "Value":"{!Account}","Readonly":true},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"outputField",
				"Label":"Output Field",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Exclusions":"CONTEXT.FIELDS",
				"Category":"ABCD",
				"Description":"Custom Input Field",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":true,
				"Hidden":true,
				"Droppables":"AB4CD:Section,c:Section",
				"LifeCount":"*",
				"DisplayTemplate":"ABCDOutputFieldTemplate",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"value","Label":"Value","Mandatory":false, "Readonly":true},
					{"Type":"Text","Name":"label","Label":"Label","Mandatory":false},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Context","Label":"Context","Mandatory":false, "Value":"{!Account}","Readonly":true},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"GridColumn",
				"Label":"Grid Column",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Column Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"AB4CD:Grid,c:Grid",
				"DelayAction":"adjustGridColumnsWidth",
				"DisplayTemplate":"ABCDGridColumnTemplate",
				"LifeCount":"1",
				"Sortable":"y",
				"Hidden":true,
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Mandatory":false, "Value":"ABCD"}, 
					{"Type":"Text","Name":"span","Label":"Column Span","Mandatory":false, "Value":"1"}, 
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"GridColumn",
				"Label":"Grid Column",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Column Component",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"AB4CD:Grid,c:Grid",
				"Hidden":true,
				"Sortable":"y",
				"DelayAction":"adjustGridColumnsWidth",
				"DisplayTemplate":"ABCDGridColumnTemplate",
				"LifeCount":"1",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"title","Label":"Title","Mandatory":false, "Value":"ABCD"}, 
					{"Type":"Text","Name":"span","Label":"Column Span","Mandatory":false, "Value":"1"}, 
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},			
			{ 
				"Id":"One",
				"Name":"SmartRule",
				"Label":"Display Rule",
				"Type":"Visualforce",
				"NameSpace":"AB4CD",
				"Category":"ABCD",
				"Description":"Display Rule to conditionally SHow/Hide Fields/Sections",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"AB4CD:Wizard,c:Wizard,AB4CD:Grid,c:grid,apex:page,apex:form",
				"DisplayTemplate":"ABCDSmartRuleTemplate",
				"LifeCount":"*",
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Name","Label":"Rule Name","Mandatory":true},
					{"Type":"Text","Name":"FieldId","Label":"Field Id","Mandatory":false},
					{"Type":"List","Name":"FieldName","Label":"Field Name","InitAction":"ABCD.CONTEXT.FIELDS","Options":[{"Label":"--None--", "Value":""}]},
					{"Type":"Radio","Name":"Event","Label":"Trigger Event", "Value":"Change", "options":[{"Label":"Change", "Value":"change"},{"Label":"Click", "Value":"click"}]},
					{"Type":"TextArea","Name":"Targets","Label":"Targets","Mandatory":false},
					{"Type":"TextArea","Name":"MatchValues","Label":"Matching Values","Value":"ALL"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			},
			{ 
				"Id":"One",
				"Name":"SmartRule",
				"Label":"Display Rule",
				"Type":"Visualforce",
				"NameSpace":"c",
				"Category":"ABCD",
				"Description":"Display Rule to conditionally SHow/Hide Fields/Sections",
				"Icon":"/auradesign/icons/flexipage/visualforcePage.svg",
				"Draggable":true,
				"Container":false,
				"Droppables":"AB4CD:Wizard,c:Wizard,AB4CD:Grid,c:grid,apex:page,apex:form",
				"DisplayTemplate":"ABCDSmartRuleTemplate",
				"LifeCount":"*",
				"hidden":true,
				"Attributes":
				[
					{"Type":"Text","Name":"Id","Label":"Id"},
					{"Type":"Text","Name":"Runtime","Label":"Runtime","Mandatory":false, "Value":"{!Runtime}","Readonly":true},
					{"Type":"Text","Name":"Name","Label":"Rule Name","Mandatory":true},
					{"Type":"Text","Name":"FieldId","Label":"Field Id","Mandatory":false},
					{"Type":"List","Name":"FieldName","Label":"Field Name","InitAction":"ABCD.CONTEXT.FIELDS","Options":[{"Label":"--None--", "Value":""}]},
					{"Type":"Radio","Name":"Event","Label":"Trigger Event", "Value":"Change", "options":[{"Label":"Change", "Value":"change"},{"Label":"Click", "Value":"click"}]},
					{"Type":"TextArea","Name":"Targets","Label":"Targets","Mandatory":false},
					{"Type":"TextArea","Name":"MatchValues","Label":"Matching Values","Value":"ALL"},
					{"Type":"TextArea","Name":"rendered","Label":"Rendered","Mandatory":false}
				]
			}
		]
}