@isTest
private class Domo_Test{

    @testSetup
    static void doTestDataSetup(){
    Account act = new Account();
    act.name = 'Test Account';
    insert act;
    }
    @isTest
     private static void doTest(){
     Test.startTest();
        Domo d = new Domo();
        d.sayHello();
        integer r = d.add(10,10);
        System.assertEquals(20,r,'Result is not equals');
        Account a = [select id,name from account where name = 'Test Account'];
        d.getAccount(a);
        User u = [select id from user where userName = 'yuvrajpatil1121@gmail.com'];
        System.runAs(u){
         Merchadise__c m = new Merchadise__c();
         m.name = 'Test Jeans';
         insert m;
         Merchadise__c mer = [select id,name from Merchadise__c where name = 'Test Jeans'];       
         delete mer;
         }
        Test.StopTest();
        }
}