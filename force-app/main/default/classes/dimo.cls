public class dimo{
    public void getAccount(Account act){
    System.debug(act);
    }
 public void sayHello(){
      System.debug('hiii');
      }
      @testVisible
      private integer doAdd(integer a,integer b){
      integer res = a+b;
      System.debug(res);
      return res;
      }
      }