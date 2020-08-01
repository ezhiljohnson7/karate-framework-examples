**STEP-1:** Start the sample web application:

		a) Navigate to jars/app/student-application 

	        b) ```java -jar ../karate-testing/jars/app/student-application-1.0.1-SNAPSHOT.jar```


**STEP-2:** Karate-env setup instructions:
			
		a) Install Maven and Create maven project with archetype -> karata-archetype via eclipse 
									or
								via command line 
			```mvn archetype:generate -DarchetypeGroupId=com.intuit.karate -DarchetypeArtifactId=karate-archetype -DarchetypeVersion=0.9.5 -DgroupId=com.karate -DartifactId=training```
			
		b) Import the project created above to your eclipse/any IDE
		
**STEP-3:** In step-1 capture the port in which the web-application is running and update the src/test/java/karate-config.js file with the right socket/uri.

**STEP-4:** Refer the sample features available in src/test/java -> any package.

**STEP-5:** Run the project from command line via maven -> ```mvn test -D test=StudentRunner```(replace this with any runner class you need).
