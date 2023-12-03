public class customSetting {
    public void customSettingEx(){
        
        mysetting__c mcs = mysetting__c.getInstance('mydataset');
        System.debug('value of my csetting'+mcs);
        if(mcs.isActive__c ==true)
        {
            System.debug('Please call trigger');
        }
        else
        {
            System.debug('Please dont call trigger');
        }
    }

}