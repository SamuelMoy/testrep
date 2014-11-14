public class MyController {

    private final Customer__c customer;

    public MyController() {
        customer = [SELECT Customer_ID__c, Address__c, Age__c, Country__c, Currency__c, Name, NIC_Number__c, Passport_Number__c, Quotations__c, Maximum_Budget__c FROM Customer__c
                   WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }

    public Customer__c getCustomer() {
        return customer;
    }

    public PageReference save() {
        update customer;         
        return null;
    }
}