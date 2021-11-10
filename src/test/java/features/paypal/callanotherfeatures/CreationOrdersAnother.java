package features.paypal.callanotherfeatures;


import com.intuit.karate.junit5.Karate;

public class CreationOrdersAnother {
    @Karate.Test
    Karate TestTCreationOrderstRunner() {

        return Karate.run("ordersCreationAnother.feature").relativeTo(getClass());
    }

}
