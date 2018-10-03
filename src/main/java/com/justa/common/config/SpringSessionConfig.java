package com.justa.common.config;

import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;

@ConditionalOnProperty(prefix = "justa", name = "spring-session-open", havingValue = "true")
public class SpringSessionConfig {

}
