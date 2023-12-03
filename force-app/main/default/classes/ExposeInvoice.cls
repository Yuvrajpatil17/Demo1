@Restresource(urlmapping='/exposeInvoice/*')
global class ExposeInvoice {
    @httpGet
    global static List<Invoice__c> getAllInvoice(){
        List<Invoice__c> inv = [select id, name from Invoice__c];
        return inv;
    }
    
    @HttpDelete
    global static void invoiceDelete(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String rid = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Invoice__c inv = [SELECT Id FROM Invoice__c WHERE Id = :rid];
        delete inv;
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