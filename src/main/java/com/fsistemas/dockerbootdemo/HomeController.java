package com.fsistemas.dockerbootdemo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
public class HomeController {
    @RequestMapping("/")
    public Mono<String> home() {
        return Mono.just("Hello World Java11/Docker/Kubernetes");
    }

    @RequestMapping("/cpu")
    public Mono<String> highCpu() {
        double value = 0D;

        for(long z =0;  z < getRandomInt(9999999); z++) {
            value = Math.sqrt(getRandomInt(9999999));
        }

        return Mono.just(String.valueOf(value));
    }


    @RequestMapping("/memory")
    public Mono<String[]> highMemory() {
        String[] memory = new String[1024];

        for(int i =0;  i < 1024; i++) {
            memory[i] = "Item " + i;
        }

        return Mono.just(memory);
    }

    private double getRandomInt(long max) {
        return Math.floor(Math.random() * Math.floor(max));
    }
}
