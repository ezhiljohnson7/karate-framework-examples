package features;

import java.util.HashMap;
import java.util.Map;

public class CustomData {
	
	private Map<String, Integer> userAgeMap = new HashMap<String, Integer>();
	private static Map<String, Integer> userAgeMapStatic = new HashMap<String, Integer>();
	
	public Map<String, Integer> getUserAge(String user){
		
		if(user.equalsIgnoreCase("user1")) {
			userAgeMap.put(user, 45);
		} else {
			userAgeMap.put(user, 50);
		}
		
		return userAgeMap;
	}
	
	public static Map<String, Integer> getUserAgeStatic(String user){
		
		if(user.equalsIgnoreCase("user1")) {
			userAgeMapStatic.put(user, 45);
		} else {
			userAgeMapStatic.put(user, 50);
		}
		
		return userAgeMapStatic;
	}

}
