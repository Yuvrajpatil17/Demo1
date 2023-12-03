public class MerchandiseArchCls {
    
    public static void insertMerchadisArch(List<Merchadise__c>mer){
        MerchandiseArchy__c ma;
        List<MerchandiseArchy__c> malist = new List<MerchandiseArchy__c>();
        
        for(Merchadise__c m : mer){
            ma = new MerchandiseArchy__c();
            ma.name = m.name;
            ma.MerchandiseArchy_Price__c = m.Merchandise_Price__c;
            ma.MerchandiseArchy_Stock__c = m.Merchadise_Stock__c;
            malist.add(ma);
        }
        
        insert malist;
    }

}