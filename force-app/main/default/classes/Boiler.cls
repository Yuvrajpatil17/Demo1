public class Boiler {
    
    public void getBoiled(integer speed){
        
        try{
            if(speed >=100){
                throw new BoilerException();
                
            }else{
                System.debug('Boiler Sir');
            }
        } catch(BoilerException be){
            speed = 0;
            System.debug('Boilre reset');
        }
    }

}