public with sharing class ContactSearch {
	public static List<Contact> searchForContacts (String lastname, String zip) {
		return [SELECT ID, FirstName, LastName FROM Contact WHERE (LastName =:lastname AND MailingPostalCode =:zip)];
	}
}