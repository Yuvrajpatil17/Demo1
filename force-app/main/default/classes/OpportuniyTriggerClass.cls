public class OpportuniyTriggerClass {
    public static void test(List<Opportunity> l1,List<Opportunity> l2)
    {	
        //Bulkifying
    	 for(Opportunity o1:l1)
			{
  			  for (Opportunity o2:l2)
   				 {
                     if(o1.StageName=='closed Won'&& o2.StageName=='closed Lost'){
                         o2.NextStep ='escalated to manager';
                         
                     }
            			 
   				 }
  		    }
	}
}