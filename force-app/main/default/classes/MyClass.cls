public class MyClass {

    public PageReference doSave() {
        upsert act;
        return new PageReference('/apex/mysuccess');
    }
    
    Account act;
    public MyClass(){
        id i=apexpages.currentpage().getparameters().get('id');
        if(i==null){
            act=new Account();
            }
            else{
            act=[select id,name from account where id=:i];
            }
            }


    public Account getMyClass() {
        return act;
    }

}