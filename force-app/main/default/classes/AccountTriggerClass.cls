public class AccountTriggerClass {
    
    public static void updateOwnership(List<Account> act){

        for(Account a: act){
            if(a.industry=='Education'){
                a.Ownership ='Public';
            }
        }
    }
 
}