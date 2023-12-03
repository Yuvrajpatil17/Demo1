@RestResource(urlMapping='/Myyinvv/*')
global class invoicess {
    @httppost
    global static void crateInvoice(List<String>descc){
        List<Invoice__c> invoices = new List<Invoice__c>();
        for(String a:descc){
            Invoice__c invoice = new Invoice__c();
            invoice.Invoice_Desc__c = a;
            invoices.add(invoice);
        }
        insert(invoices);
    }

}