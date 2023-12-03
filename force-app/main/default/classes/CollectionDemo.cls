public class CollectionDemo {
    public void getNames(){
        List<String> name = new List<String>();
        List<String> nm1 = new List<String>();
        name.add('Yuvraj');
        name.add(0,'Satish');
        name.set(0,'Ram');
        name.add('Umesh');
        name.add('Patil');
        name.add('Patil');
        nm1.addAll(name);
        System.debug(nm1);
        System.debug('Contains : ' + name.contains('Ram'));
        System.debug(name.get(1));
        System.debug('List Size is : ' + name.size());
        System.debug('iSList is Empty : ' + name.isEmpty());
        System.debug('List values are : ' + name);
        for(String nm:name){
            System.debug('names = ' + nm);
        }
        
    }

}