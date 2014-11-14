trigger DealsRejectedTrigger on Deal_Action__c (after insert, after update, before delete, after undelete) {
	List<Deal_Action__c> rejected = [SELECT Id, Deal_Action__c.Contact__r.Deals_Rejected__c FROM Deal_Action__c WHERE Deal_Action__c.Action__c = 'Rejected'];
	List<Contact> cont = new List<Contact>();
	for (Deal_Action__c deal : rejected) {
		deal.Contact__r.Deals_Rejected__c = rejected.size();
		cont.add(deal.Contact__r);
	}

	update cont;
}