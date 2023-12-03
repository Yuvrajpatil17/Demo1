public class PriceSchedule implements schedulable {
    public void execute(SchedulableContext sc){
        priceBatch pb = new priceBatch();
        database.executeBatch(pb);
    }

}