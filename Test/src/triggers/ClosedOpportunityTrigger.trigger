trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Task> taskList = new List<Task>();
	
	for (Opportunity opp : [SELECT Id, StageName FROM Opportunity WHERE (Id IN :Trigger.New AND StageName = 'Closed Won') ]) {
		Task task = new Task(Subject = 'Follow Up Test Task', WhatId = opp.Id);
		taskList.add(task);		
	}

	insert taskList;
}