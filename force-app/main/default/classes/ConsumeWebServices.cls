public class ConsumeWebServices {
    
    public void ConsumeWeb(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Contet-type', 'application/json;charset=UTf-8');  
        request.setBody('{"name":"Tiger"}');
        HttpResponse response = http.send(request);
        
        if(response.getstatusCode()!=201){
            System.debug('Thes status code returned was not expected'+ response.getStatusCode()+' ' + response.getStatus());
        }
        else{
            System.debug(response.getBody());
        
        }
        
    }

}