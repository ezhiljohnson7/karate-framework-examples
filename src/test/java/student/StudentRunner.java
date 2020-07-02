package student;

import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(features = {"classpath:student/get-students.feature", "classpath:student/create-student.feature"})
public class StudentRunner {

}
