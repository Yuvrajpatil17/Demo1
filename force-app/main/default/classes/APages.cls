public class APages {
    /*
     ---------------------------------------------------------------------------------------
      RestResource(urlMapping='/myAccount/*')
global class RestExample {
   
    @httpGet
    global static List<Account>getAllAccount(){
        
        
        List<Account>act = [select id,name from account];
        return act;
    }
    
    @httpPost
    global static void createAccount(String actName){
        Account a = new Account();
        a.name = actName;
        insert a;
    }
    
    @httpDelete
    global static void deleteAccount(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        String rid=req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Account act=[select id,name from account where id=:rid];
        delete act;
    
        
    }
@httpPost
    global static void createinvoice(List<String> InvoiceDesc){
         List<Invoice__c> invoices = new List<Invoice__c>();
          for(String descs:InvoiceDesc){
        Invoice__c newInvoice=new Invoice__c();
              newInvoice.Invoice_Desc__c=descs;  
            Invoices.add(newInvoice);       
               }
        insert Invoices;
    }
        
}
--------------------------------------------------------------------
{"actName":"accout created from web"}
*/


}