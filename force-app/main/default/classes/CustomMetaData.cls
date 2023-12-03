public class CustomMetaData {
    public void customMetaDataExa(){
        custom_meta_data__mdt cmd = custom_meta_data__mdt.getInstance('update_trigger_status');
        System.debug('value of my csetting'+cmd);
        if(cmd.isActive__c ==true)
        {
            System.debug('true');
        }
        else
        {
            System.debug('False');
        }
    }

}