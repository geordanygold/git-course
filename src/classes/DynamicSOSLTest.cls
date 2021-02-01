@isTest
public class DynamicSOSLTest {
    
    @isTest static void findText(){
        
        Contact cont = new Contact(
            LastName = 'Novikova',
            Description = 'Asia'
        ); 
        
        Contact cont1 = new Contact(
            LastName = 'Asian', 
            Description = 'Asian attraction'
        );
        
        insert new List <Contact>{cont, cont1};
        
        Id [] fixedSearchResults = new Id[]{cont.Id};
        Test.setFixedSearchResults(fixedSearchResults);
        
        Test.startTest();   
        List<List<sObject>> resultList = DynamicSOSL.resultList(Contact.class, 'Asia');
        Test.stopTest();
        
        System.assertEquals(cont.Id, resultList[0][0].Id, 'Contact Ids should match');
    }

}