public class DynamicSOSL {
    
/**
* Method to form a dynamic SOSL query for an sObject type provided at runtime
*
* @param t - sObject`s type
* @param findText - text searched for sObject that have any fields with this text.
* @return List<List<SObject>> - List of fields with value findText return
**/
    
    public static List<List<SObject>> resultList ( Type t, String findText ){
        
        String sObjectName = t.getName();       
        String searchquery = 'FIND\'' + findText + '\'IN ALL FIELDS RETURNING ' + sObjectName + '(Name)'; 
        List<List<SObject>> searchList = search.query(searchquery);
        return searchList;
    }

}