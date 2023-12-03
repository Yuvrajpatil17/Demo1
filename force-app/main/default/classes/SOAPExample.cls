global class SOAPExample {
    webService static Account getAccout(String actId){
        Account act = [select id,name from account where id=:actId];
        return act;
    }

}