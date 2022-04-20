package com.spring.security.authorization_server.client;

import com.spring.security.authorization_server.client.Client;
import com.spring.security.authorization_server.client.ClientService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    private final ClientService clientService;

    public Controller(ClientService clientService) {
        this.clientService = clientService;
    }

    @PostMapping("/add")
    public void addClient(@RequestBody Client client) {
        clientService.addClient(client);
    }
}
