public class CollectionSet {
    
    public void getNames(){
        
        Set<String> name = new Set<String>();
        name.add('Yuvraj');
        name.add('Satish');
        name.add('Umesh');
        name.add('Yuvraj');
        name.remove('Yuvraj');
        System.debug('Names ' +name);
        for(String nm:name){
            System.debug('Names' + nm);
        }
           
        
    }
}