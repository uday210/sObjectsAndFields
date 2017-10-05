public class SobjectAndFieldsPuller {
    
    @AuraEnabled
    
    public static map<String,String> getAllSobjects(){
       Map<String, Schema.SObjectType> AllObjmap =   New Map<String, Schema.SObjectType>();
       AllObjmap = Schema.getGlobalDescribe();
	map<String,String> objList = new map<String,String>();
         for(string s:AllObjmap.keyset()){
             
             System.debug('>>>>> '+AllObjmap.get(s).getDescribe().getLabel());
        objList.put(AllObjmap.get(s).getDescribe().getLabel(),s);
    }
        
        return objList;
    }
    
    @AuraEnabled
    
    public static map<String,String> getAllFields(String ObjIs){
        
           
map<String,String> AllFields = new map<String,String>();
   //use GlobalDecribe to get a list of all available Objects
            Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe();
            Set<String> objectKeys = gd.keySet();
        for(String objectKey: objectKeys)
    {
            //Iterate through all objects to locate ACCOUNT Object
            if (objectKey == ObjIs  ) 
            {
                Schema.SObjectType systemObjectType = gd.get(objectKey);
                Schema.DescribeSObjectResult r = systemObjectType.getDescribe();
                Map<String, Schema.SObjectField> M = r.fields.getMap();
                Set<String> fieldNames = M.keySet();

                             
        
                //iterate through all fields of the object to locate the field
                for(String fieldName: fieldNames)
                {
       
             
               Schema.SObjectField field = M.get(fieldName);
                Schema.DescribeFieldResult fieldDesc = field.getDescribe();
                //extract the picklist valuee
                System.debug(fieldDesc.getPicklistValues() + ' ::::::::::::::::::::::::::::::::::: ') ;
                String AllPickVals = '' ;
                if(fieldDesc.getPicklistValues().size() != 0){
                    for(Schema.PicklistEntry eac:fieldDesc.getPicklistValues()){
                    
                           AllPickVals += eac.getValue() +',';
                    }
                
                }
                    //AllObjmap.get(s).getDescribe().getLabel()
                AllFields.put(fieldName,fieldDesc.getLabel());
            
            }
    }
	
	}

       return AllFields; 
        
    }

}