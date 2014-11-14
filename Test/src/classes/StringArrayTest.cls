public with sharing class StringArrayTest {
	public static List<String> generateStringArray(Integer strings) {
		List <String> res = new List<String>();
		for (Integer i = 0; i < strings; i++) {
			res.add('Test ' +i);
		}
		for (String str : res) {
			System.debug(str);
		}
		return res;
	}
}