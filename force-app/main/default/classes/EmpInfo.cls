public class EmpInfo {
    @auraEnabled
    public Static void insertEmpDetails(String enm,String efnm,String eaddr,String edpt,String esal){
        Employee__c emp = new Employee__c();
        emp.Name = enm;
        emp.EmployeeFather_Name__c = efnm;
        emp.Employee_Adress__c = eaddr;
        emp.Employee_Dept__c = edpt;
        emp.Employee_Salary__c=Integer.valueOf(esal);
        insert emp;
    }
    

}