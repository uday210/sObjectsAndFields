({
	/**processComponent : function(component) {
        var pa = component.get("v.proceedArray");
        var index  = pa.indexOf('false')
        pa[index] = 'true';
        component.set("v.proceedArray", pa);
        if(pa.indexOf('false') == -1)
        {
            Handlebars.registerHelper('getTypedField', function(field,row){
                var fIndex = component.get("v.columnsList").indexOf(field);
                var fType = component.get("v.fieldTypes")[fIndex];
                if(fType == 'DATE' || fType == 'DATETIME')
                {
                    if(row[field])
                    {
                        return $A.localizationService.formatDate(row[field]);
                    }
                    return row[field];
                }
                else if(fType == 'CURRENCY')
                {
                    if(row[field])
                    {
                        return $A.localizationService.formatCurrency(Number(row[field]));
                    }
                    return row[field];
                    
                }
                else if(fType == 'PERCENT')
                {
                    return row[field]+'%';
                }
                else if(fType == 'EMAIL')
                {
                    return row[field];
                }
                else if(fType == 'URL')
                {
                    return row[field];
                }
                return row[field];
            });
            var listMarkup = $(component.find("dataRowsTemplate").getElement()).html();
            listMarkup= listMarkup.replace(/STEROID_HASH/g,'#');
            var listDataTemplate = Handlebars.compile(listMarkup); 
            var lOut = listDataTemplate(component.get("v.records"));
            $(component.find("tb").getElement()).append(lOut);
        }
	}*/
})