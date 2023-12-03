public class ExceptionHandling {
           public void exceptionhand(){
        try{
            Demo d;
            system.debug('value of d ='+d);
            List<string> name = new list<string>();
            name.add('sonu');
            System.debug(name.get(5));
            d.sayHello();          
                }catch(NullPointerException ne){
                    system.debug('please do not call with null');
                }catch(Exception ex){
                    system.debug('server is busy, please try after some time');
                }
    }

}