package com.example.backend;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class BackendRestTest {

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    void testHomeEndpoint() {
        // Replace "/" with your actual endpoint
        String body = this.restTemplate.getForObject("/", String.class);
        assertThat(body).isNotNull();
    }
}
