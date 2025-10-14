package config;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class MainRunner {

    @Test
    void ejecutarTests() {
        Results results = Runner.path("classpath:features")
                .tags("@auth")
                .outputCucumberJson(true)
                .reportDir("build/karate-reports/" + System.currentTimeMillis())
                .parallel(1);

        long totalFeatures = results.getFeatureResults().count(); // 👈 esta es la línea clave

        System.out.println("────────────────────────────────────────────");
        System.out.println("✅ KARATE TEST SUMMARY");
        System.out.println("────────────────────────────────────────────");
        System.out.println("Total Features: " + totalFeatures);
        System.out.println("Total Failures: " + results.getFailCount());
        System.out.println("Error Messages: " +
                (results.getErrorMessages().isEmpty() ? "Ninguno" : results.getErrorMessages()));
        System.out.println("Report Directory: " + results.getReportDir());
        System.out.println("────────────────────────────────────────────");

        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }
}
