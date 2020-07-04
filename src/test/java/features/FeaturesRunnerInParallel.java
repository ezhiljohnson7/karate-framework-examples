package features;

import org.junit.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class FeaturesRunnerInParallel {
	
	@Test
	public void reporting() {
		
		Results consolidatedTestReport = Runner.path("classpath:features").parallel(5);
		
		System.out.println(consolidatedTestReport.getElapsedTime());
		System.out.println(consolidatedTestReport.getFailCount());
	}
}
