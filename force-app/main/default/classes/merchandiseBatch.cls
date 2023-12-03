public class merchandiseBatch implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query = 'select id,name,Merchandise_Price__c from Merchadise__c';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc,list<Merchadise__c>mer){
        for(Merchadise__c m:mer){
            m.Merchandise_Price__c=90;
        }
        update mer;
    }
    public void finish(Database.BatchableContext bc){
        
    }


}