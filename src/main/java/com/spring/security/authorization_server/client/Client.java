package com.spring.security.authorization_server.client;

public class Client {

    private String clientId;
    private String clientSecret;
    private String scope;

    public String getClientId() {
        return clientId;
    }

    public String getClientSecret() {
        return clientSecret;
    }

    public String getScope() {
        return scope;
    }
}
