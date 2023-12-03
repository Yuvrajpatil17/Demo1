public class CampeignClass {
    
    public static void insertCampeignArch(List<Campaign>mer){
        CampeinArchy__c ma;
        List<CampeinArchy__c> malist = new List<CampeinArchy__c>();
        
        for(Campaign m : mer){
            
            ma = new CampeinArchy__c();
            ma.name = m.name;
            malist.add(ma);
        }
        
        insert malist;
    }

}