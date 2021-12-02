package features.paypal.env;


import com.intuit.karate.junit5.Karate;

public class TokenBasicEnv {
    @Karate.Test
    Karate TestTCreationOrderstRunner() {

        return Karate.run("tokenBasicEnv.feature").relativeTo(getClass());
    }

}
