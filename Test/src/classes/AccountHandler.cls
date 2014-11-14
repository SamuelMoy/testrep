public with sharing class AccountHandler {
	public static Account insertNewAccount(String name) {
		Account acc = new Account(Name = name);
		try {
			insert acc;
			return acc;
		} catch(DmlException e) {
			return null;
		}
	}
}