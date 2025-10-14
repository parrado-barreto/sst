package config;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class MainRunner {

    @Test
    void ejecutarTests() {
        Results results = Runner.path("classpath:features/auth") // <-- aquí usa Runner.path()
                .tags("@verify")
                .outputCucumberJson(true)
                .reportDir("build/karate-reports")
                .parallel(1);

        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
