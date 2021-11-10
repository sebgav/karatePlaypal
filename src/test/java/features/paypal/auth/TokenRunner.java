package features.paypal.auth;

import com.intuit.karate.junit5.Karate;

public class TokenRunner {
    @Karate.Test
    Karate TestTokenRequestRunner() {
        return Karate.run("token.feature").relativeTo(getClass());
    }

}
