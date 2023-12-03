trigger ClosedOpportunityTrigger on Opportunity (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    if(Trigger.isUpdate && Trigger.isBefore)
    {
    OpportuniyTriggerClass.test(Trigger.old,Trigger.new);
    }

}