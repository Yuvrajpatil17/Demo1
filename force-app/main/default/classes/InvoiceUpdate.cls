public class InvoiceUpdate implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
        string query = 'select id , Invoice_Desc__c, Invoice_Status__c , Invoice_Date__c from Invoice__c where Invoice_Date__c != today' ;
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, List<Invoice__c> inv){
        List<Invoice__c> invoiceUpdate = new List<Invoice__c>();
        for(Invoice__c ing : inv){
            ing.Invoice_Desc__c = 'Kids';
            ing.Invoice_Status__c = 'closed';
            ing.Invoice_Date__c = date.today();
            invoiceUpdate.add(ing);
        }
        update invoiceUpdate;
    }
    public void finish(Database.BatchableContext bc){
    }
 
}