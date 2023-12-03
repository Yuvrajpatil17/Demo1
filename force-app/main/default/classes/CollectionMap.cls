public class CollectionMap {
    public void getNames(){
        
        Map<String,String> name = new Map<String,String>();
        name.put('nm1','Yuvraj');
        name.put('nm2','Umesh');
        name.put('nm3','Satish');
        name.put('nm4','Patil');
        System.debug('names' + name);
        System.debug('result' + name.get('nm1'));
        Set<String>n = name.keySet();
        for(String nn : n){
            System.debug(name.get(nn));
        }
        List<string> val = name.values();
        for(string v: val){
            system.debug('Values are: ' + v);
        }
        
        
    }

}