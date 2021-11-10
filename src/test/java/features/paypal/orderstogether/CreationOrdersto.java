package features.paypal.orderstogether;


import com.intuit.karate.junit5.Karate;

public class CreationOrdersto {
    @Karate.Test
    Karate TestTCreationOrderstRunner() {

        return Karate.run("ordersCreationto.feature").relativeTo(getClass());
    }

}
