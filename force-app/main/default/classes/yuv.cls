public class yuv
{
    public void getAccount(Account act){
    System.debug(act);
    }
    public void SayHello()
    {
        System.debug('hello');
        }
        @testVisible
        private integer doAdd(integer a,integer b){
        integer res = a+b;
        System.debug(res);
        return res;
        }
        
        }