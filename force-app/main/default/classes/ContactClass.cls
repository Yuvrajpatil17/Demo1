public class ContactClass {
        Contact con;
        String name;
            public ContactClass(){
                con = new Contact();
                }

                public PageReference doSave() {
                insert(con);
                return new pageReference('/003/o');
    }

       

    public Contact getContactClass() {
        return con;
    }

}