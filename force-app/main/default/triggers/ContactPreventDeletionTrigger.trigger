trigger ContactPreventDeletionTrigger on Contact (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
        if(Trigger.isDelete && Trigger.isBefore){
        
        ContactDeletionHandler.contactDelete(Trigger.old);

}
}