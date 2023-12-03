@isTest
private class Dimo_Test{
    public TestMethod static void doTest(){
    dimo d = new dimo();
    d.SayHello();
    d.doAdd(10,10);
    integer r = d.doAdd(10,10);
    System.assertEquals(20,r,'result is not equals');
    }
    }