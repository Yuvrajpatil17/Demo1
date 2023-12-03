public class InvoiceSchedule implements schedulable{
    public void execute(Schedulablecontext sc){
        InvoiceUpdate iu = new InvoiceUpdate();
        database.executeBatch(iu);
    }
 
}