public class ExceptionDemo {
    
    public void exceptionhand(){
        try{
            Demo d;
            //d.sayHello();
            List<string> name = new list<string>();
            name.add('yuvraj');
            System.debug(name.get(5));
                     
                }catch(NullPointerException ne){
                    system.debug('please do not call with null');
                }catch(ListException le){
                    System.debug('please call the value within list');
                }catch(Exception ex){
                    system.debug('server is busy, please try after some time');
                }
    }
    }