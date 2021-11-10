package features.paypal.orders;


import com.intuit.karate.junit5.Karate;

public class CreationOrders {
    @Karate.Test
    Karate TestTCreationOrderstRunner() {

        return Karate.run("ordersCreationto.feature").relativeTo(getClass());
    }

}
