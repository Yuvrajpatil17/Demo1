public class Yuvrajjj implements Database.Batchable<sObject> {
    public Database.queryLocator start(Database.BatchableContext bc){
        String query = 'select id,name,Invoice_Date__c from Invoice__c';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc,List<Invoice__c>inv){
        for(Invoice__c a:inv){
            a.Invoice_Date__c = Date.Today();
        }
        update inv;
    }
    public void finish(Database.BatchableContext bc){
        
    }

}