trigger DealsAcceptedTrigger on Deal_Action__c (after insert, after update, before delete, after undelete) {
	List<Deal_Action__c> accepted = [SELECT Id, Deal_Action__c.Contact__c, Deal_Action__c.Contact__r.Deals_Accepted__c FROM Deal_Action__c WHERE Deal_Action__c.Action__c = 'Accepted'];
	List<Contact> cont = new List<Contact>();
	for (Deal_Action__c deal : accepted) {
		deal.Contact__r.Deals_Accepted__c = accepted.size();
		cont.add(deal.Contact__r);
	}

	update cont;

}