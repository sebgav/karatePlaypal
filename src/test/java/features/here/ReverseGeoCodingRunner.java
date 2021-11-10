package features.here;


import com.intuit.karate.junit5.Karate;
public class ReverseGeoCodingRunner {
    @Karate.Test
    Karate TestReverseGeoCodingRunner() {
        return Karate.run("reverseGeoCoding.feature").relativeTo(getClass());
    }

}
