@isTest
private class yuv_Test{
        @testSetup
        public static void createAccount(){
        Account ac = new account();
        ac.name = 'new account';
        insert ac;
        }
        @isTest
    private static void doTest(){
      Test.startTest();
     yuv y = new yuv();
           y.sayHello();
           integer r = y.doAdd(10,10);
           System.assertEquals(20,r,'result is not equals');
           Account act = [select id,name from account where name = 'new account'];
           y.getAccount(act);
           user u = [select name from user where userName='yuvrajpail1121@gmail.com'];
           System.runAs(u){
           Merchadise__c c = new Merchadise__c();
           c.name = 'patil';
           insert c;
           Merchadise__c a = [select name from Merchadise__c where name = 'patil'];
           delete a;
           }
           Test.StopTest();
           
        
           
}
}