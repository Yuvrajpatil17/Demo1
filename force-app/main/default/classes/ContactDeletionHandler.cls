public class ContactDeletionHandler {
    
    public static void contactDelete(List<Contact> conts){
        List<Contact> localList = new  List<Contact>();
        for(Contact c:conts){
            if(c.AccountId!=null){
                c.addError('Can not Delete Conatct As Account Is Associated');
            }
        }

    }
}