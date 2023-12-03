@RestResource(urlMapping = '/myiinvoice/*')
global class newInvoice {
    @httpGet
    global static List<Invoice__c> getInvoice(){
        List<Invoice__c> inv = [select id,name from Invoice__c];
        return inv;
        
    }
    
    @httpPost
    global static void createInvoice(List<String> descs){
        List<Invoice__c> invoice = new List<Invoice__c>();
        for(String a:descs){
            Invoice__c newInvoices = new Invoice__c();
            newInvoices.Invoice_Desc__c = a;
            invoice.add(newInvoices);
            
        }
        insert invoice;
            
        }
    
    @httpDelete
    global static void deleteinvoice(){
        
        RestRequest request =  restContext.request;
        RestResponse response =  restContext.response;
        String RecordId = request.requestURI.Substring(request.requestURI.LastIndexOf('/')+1);
        Invoice__c inv = [select id,name from Invoice__c where id=:RecordId];
        delete inv;
        
    }
            

}