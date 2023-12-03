@RestResource(urlMapping='/Mymii/*')
global class mymercha {
    
    @httpget
    global static list<account> getaccount(){
        list<account>acc=[select id,name from account];
        return acc;
    }
    @httppost
    global static void getdata(String acc){
        Account ac = new Account();
        ac.name = acc;
        insert(ac);
    }
    @httpdelete
    global static void deleteacc(){
        RestRequest request = RestContext.request;
        RestResponse response = RestContext.response;
        String riid = Request.requestURI.substring(Request.requestURI.lastIndexOf('/')+1);
        account ac = [select id,name from account where id=:riid];
        delete ac;
        
    }
    

}