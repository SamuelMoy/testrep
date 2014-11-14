public with sharing class ContactAndLeadSearch {
	public static List<List<SObject>> searchContactsAndLeads(String search) {
		Lead lead = new Lead (LastName = 'Smith', Status = 'Open - Not Contacted', Company = 'ABSI' );
		Contact contact = new Contact(LastName = 'Smith');
		insert lead;
		insert contact;

		return [FIND :search IN ALL FIELDS RETURNING Lead(FirstName,LastName), Contact(FirstName,LastName)];
	}
}