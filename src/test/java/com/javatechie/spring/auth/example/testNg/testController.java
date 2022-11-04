package com.javatechie.spring.auth.example.testNg;
import org.springframework.http.*;
import org.springframework.web.client.RestTemplate;
import org.testng.annotations.Test;

import java.util.Base64;


public class testController  {
    String url = "http://localhost:8080";
    @Test
    public void testAuthorization() {
        try {

            String authStr = "dauren:qwerty";
            String base64Creds = Base64.getEncoder().encodeToString(authStr.getBytes());
            HttpHeaders headers = new HttpHeaders();
            headers.add("Authorization", "Basic " + base64Creds);
            HttpEntity request = new HttpEntity(headers);
            ResponseEntity<String> response = new RestTemplate().exchange(url, HttpMethod.GET, request, String.class);
            String json = response.getBody();

            HttpEntity request1 = new HttpEntity(headers);
            ResponseEntity<String> response1 = new RestTemplate().exchange(url+"/home", HttpMethod.GET, request1, String.class);

            System.out.println(response1);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
