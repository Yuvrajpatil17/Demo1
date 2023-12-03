public class SOQLDemo {
    
    public void getAllMerchandise(){
        List<Merchadise__c> mrc = [select id,name,Merchandise_Price__c,Merchadise_Stock__c,Merchandise_Desc__c from Merchadise__c];
        for(Merchadise__c a: mrc){
            System.debug(' merchandise Id = '+a.id+'Merchandise Name' +a.name + 'Price'+a.Merchandise_Price__c+'stock'+a.Merchadise_Stock__c+'desc'+a.Merchandise_Desc__c);
        }
    }

}