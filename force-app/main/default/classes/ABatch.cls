public class ABatch {
    /*public class MyBatch implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query = 'select id,name from account';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc,list<Account>act){
        for(Account a:act){
            a.name=a.name+'Updated';
        }
        update act;
    }
    public void finish(Database.BatchableContext bc){
        
    }

}
------------------------------------------------------------
MyBatch mb = new MyBatch();
database.executeBatch(mb);
or
database.executeBatch(mb,size of the batch);
---------------------------------------------------
public class priceBatch implements Database.Batchable<sObject> {
    
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
--------------------------------------------------------------------
public class MyBatch implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query = 'select id,name from account';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc,list<Account>act){
        for(Account a:act){
            a.name=a.name+'Updated';
        }
        update act;
    }
    public void finish(Database.BatchableContext bc){
        priceBatch mb = new priceBatch();
        database.executeBatch(mb);
        
    }

}
---------------------------------------------------------------------
public class IvoiceBatch implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query = 'select id,name,Invoice_Date__c from Invoice__c';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc,list<Invoice__c>inv){
        for(Invoice__c a:inv){
            a.Invoice_Date__c= Date.Today();
        }
        update inv;
    }
    public void finish(Database.BatchableContext bc){
        
    }


}
-----------------------------------------------------------------------------
IvoiceBatch inv = new IvoiceBatch();
Database.executeBatch(inv);
--------------------------------------------------------------------------------
public class invoiceSchedule implements Schedulable{
public void execute(SchedulablContext sc){
IvoiceBatch inv = new IvoiceBatch();
Database.executeBatch(inv);

}
}
invoiceSchedule is = new invoiceSchedule();
String inv = '0 0 *8 * * ?';
System.schedule('myschedule',inv,is);

----------------------------------------------------------------------------

*/

}