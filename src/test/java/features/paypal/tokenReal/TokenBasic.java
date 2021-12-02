package features.paypal.tokenReal;


import com.intuit.karate.junit5.Karate;

public class TokenBasic {
    @Karate.Test
    Karate TestTCreationOrderstRunner() {

        return Karate.run("tokenBasic.feature").relativeTo(getClass());
    }

}
