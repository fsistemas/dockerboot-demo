package com.fsistemas.dockerbootdemo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
public class HealthCheckController {
    @RequestMapping("/health-check")
    @ResponseBody
    public Mono<String> healthCheck() {
        return Mono.just("UP");
    }
}
