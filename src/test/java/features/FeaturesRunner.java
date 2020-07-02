package features;

import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(tags = {"@sanity", "@smoke"}, features = { "classpath:features/fuzzy-matches.feature" })
public class FeaturesRunner {

}
